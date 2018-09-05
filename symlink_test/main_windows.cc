#include <Windows.h>
#include <iostream>
#include <string.h>
#include <ctime>
#include <string>
#include <wchar.h>  // wcslen

#include <memory>  // unique_ptr
#include <sstream>
#include <vector>

#ifndef SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE
#define SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE 0x2
#endif

#ifndef SYMBOLIC_LINK_FLAG_DIRECTORY
#define SYMBOLIC_LINK_FLAG_DIRECTORY 0x1
#endif

using namespace std;

class SymlinkResolver {
 public:
  SymlinkResolver();

  // Resolves symlink to its actual path.
  //
  // Returns true if `path` is not a symlink and it exists.
  // Returns true if `path` is a symlink and can be successfully resolved.
  // Returns false otherwise.
  //
  // If `result` is not nullptr and the method returned true, then this will be
  // reset to point to a new WCHAR buffer containing the resolved path.
  // If `path` is a symlink, this will be the resolved path, otherwise
  // it will be a copy of `path`.
  bool Resolve(const WCHAR* path, std::unique_ptr<WCHAR[]>* result);

 private:
  // Symbolic Link Reparse Data Buffer is described at:
  // https://msdn.microsoft.com/en-us/library/cc232006.aspx
  typedef struct _ReparseSymbolicLinkData {
    static const int kSize = MAXIMUM_REPARSE_DATA_BUFFER_SIZE;
    ULONG ReparseTag;
    USHORT ReparseDataLength;
    USHORT Reserved;
    USHORT SubstituteNameOffset;
    USHORT SubstituteNameLength;
    USHORT PrintNameOffset;
    USHORT PrintNameLength;
    ULONG Flags;
    WCHAR PathBuffer[1];
  } ReparseSymbolicLinkData;

  uint8_t reparse_buffer_bytes_[ReparseSymbolicLinkData::kSize];
  ReparseSymbolicLinkData* reparse_buffer_;
};

SymlinkResolver::SymlinkResolver()
    : reparse_buffer_(
          reinterpret_cast<ReparseSymbolicLinkData*>(reparse_buffer_bytes_)) {}

bool SymlinkResolver::Resolve(const WCHAR* path, unique_ptr<WCHAR[]>* result) {
  DWORD attributes = ::GetFileAttributesW(path);

  if (attributes == INVALID_FILE_ATTRIBUTES) {
    // `path` does not exist.
    return false;
  } else {
    if ((attributes & FILE_ATTRIBUTE_REPARSE_POINT) != 0) {
      bool is_dir = attributes & FILE_ATTRIBUTE_DIRECTORY;
      HANDLE handle =
          CreateFileW(path, FILE_READ_EA,
                      FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                      NULL, OPEN_EXISTING,
                      (is_dir ? FILE_FLAG_BACKUP_SEMANTICS : 0) |
                          FILE_FLAG_OPEN_REPARSE_POINT,
                      NULL);
      if (!handle) {
        // Opening the symlink failed for whatever reason. For all intents and
        // purposes we can treat this file as if it didn't exist.
        return false;
      }
      // Read out the reparse point data.
      DWORD bytes_returned;
      BOOL ok = ::DeviceIoControl(
          handle, FSCTL_GET_REPARSE_POINT, NULL, 0, reparse_buffer_,
          MAXIMUM_REPARSE_DATA_BUFFER_SIZE, &bytes_returned, NULL);
      if (!ok) {
        // Reading the symlink data failed. For all intents and purposes we can
        // treat this file as if it didn't exist.
        return false;
      }
      if (reparse_buffer_->ReparseTag == IO_REPARSE_TAG_SYMLINK) {
        if (result) {
          size_t len = reparse_buffer_->SubstituteNameLength / sizeof(WCHAR);
          result->reset(new WCHAR[len + 1]);
          const WCHAR* substituteName =
              reparse_buffer_->PathBuffer +
              (reparse_buffer_->SubstituteNameOffset / sizeof(WCHAR));
          wcsncpy_s(result->get(), len + 1, substituteName, len);
          result->get()[len] = UNICODE_NULL;
        }
        return true;
      }
    }
  }
  // `path` is a normal file or directory.
  if (result) {
    size_t len = wcslen(path) + 1;
    result->reset(new WCHAR[len]);
    memcpy(result->get(), path, len * sizeof(WCHAR));
  }
  return true;
}

bool ReadSymlinkW(const wstring& link, wstring* result) {
  unique_ptr<WCHAR[]> result_ptr;
  if (!SymlinkResolver().Resolve(link.c_str(), &result_ptr)) {
    return false;
  }
  *result = wstring(result_ptr.get());
  return true;
}

void TestSymlinksOnFiles(int count) {
    const wchar_t* target = L"target_file";
    const wchar_t* linkDir = L"links_for_file/";

    CreateDirectoryW(linkDir, NULL);

    // Create
    clock_t begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        if (CreateSymbolicLinkW(link.c_str(), target, SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE) == 0) {
            wcout << "Error: Symlink creation failed!" << endl;
        }
    }

    clock_t end = clock();

    double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;

    printf("Time for creating %d file symlinks: %lf\n", count, elapsed_secs);

    // Resolve
    begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        wstring result;
        if (ReadSymlinkW(link, &result) == 0) {
            wcout << "Error: Symlink resolving failed!" << endl;
        }
    }

    end = clock();

    elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    printf("Time for resolving %d file symlinks: %lf\n", count, elapsed_secs);

    // Delete
    begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        if (DeleteFileW(link.c_str()) == 0) {
            wcout << "Error: Symlink deleting failed!" << endl;
        }
    }

    end = clock();

    elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    printf("Time for deleting %d file symlinks: %lf\n", count, elapsed_secs);
}

void TestSymlinksOnDirectories(int count) {

    const wchar_t* target = L"target_dir";
    const wchar_t* linkDir = L"links_for_dir/";

    CreateDirectoryW(linkDir, NULL);

    // Create
    clock_t begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        if (CreateSymbolicLinkW(link.c_str(), target, SYMBOLIC_LINK_FLAG_DIRECTORY | SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE) == 0) {
            wcout << "Error: Symlink creation failed!" << endl;
        }
    }

    clock_t end = clock();

    double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;

    printf("Time for creating %d directory symlinks: %lf\n", count, elapsed_secs);

    // Resolve
    begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        wstring result;
        if (ReadSymlinkW(link, &result) == 0) {
            wcout << "Error: Symlink resolving failed!" << endl;
        }
    }

    end = clock();

    elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    printf("Time for resolving %d directory symlinks: %lf\n", count, elapsed_secs);

    // Delete
    begin = clock();

    for (int i = 0; i < count; i++) {
        wstring link = wstring(linkDir) + to_wstring(i);
        if (RemoveDirectoryW(link.c_str()) == 0) {
            wcout << "Error: Symlink deleting failed!" << endl;
        }
    }

    end = clock();

    elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    printf("Time for deleting %d directory symlinks: %lf\n", count, elapsed_secs);
}

int main() {
    TestSymlinksOnFiles(100000);
    TestSymlinksOnDirectories(100000);
    return 0;
}
