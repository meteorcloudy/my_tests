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

bool Resolve(const WCHAR* path, wstring* result) {
  DWORD attributes = ::GetFileAttributesW(path);
  reparse_buffer_ = (ReparseSymbolicLinkData*) reparse_buffer_bytes_;

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
          result->resize(len + 1, UNICODE_NULL);
          const WCHAR* substituteName =
              reparse_buffer_->PathBuffer +
              (reparse_buffer_->SubstituteNameOffset / sizeof(WCHAR));
          result->assign(substituteName, len);
        }
        return true;
      }
    }
  }
  // `path` is a normal file or directory.
  if (result) {
    size_t len = wcslen(path) + 1;
    result->resize(len + 1, UNICODE_NULL);
    result->assign(path, len);
  }
  return true;
}

bool ReadSymlinkW(const wstring& link, wstring* result) {
  if (!Resolve(link.c_str(), NULL)) {
    return false;
  }
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
    // TestSymlinksOnDirectories(10000);
    TestSymlinksOnFiles(10000);
    return 0;
}
