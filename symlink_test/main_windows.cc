#include <Windows.h>
#include <iostream>
#include <string.h>
#include <ctime>
#include <string>

#ifndef SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE
#define SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE 0x2
#endif

#ifndef SYMBOLIC_LINK_FLAG_DIRECTORY
#define SYMBOLIC_LINK_FLAG_DIRECTORY 0x1
#endif

using namespace std;

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
    TestSymlinksOnFiles(10000);
    TestSymlinksOnDirectories(10000);
    return 0;
}
