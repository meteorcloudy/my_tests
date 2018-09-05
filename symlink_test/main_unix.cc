#include <iostream>
#include <string.h>
#include <ctime>
#include <string>
#include <unistd.h>
#include <sys/stat.h>

using namespace std;

void TestSymlinks(int count) {
    const char* target = "target_file";
    const char* linkDir = "links_for_file/";

    mkdir(linkDir, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);

    // Create
    clock_t begin = clock();

    for (int i = 0; i < count; i++) {
        string link = string(linkDir) + to_string(i);
        if (symlink(target, link.c_str()) != 0) {
            cout << "Error: Symlink creation failed!" << endl;
        }
    }

    clock_t end = clock();

    double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;

    printf("Time for creating %d symlinks: %lf\n", count, elapsed_secs);

    // Resolve
    begin = clock();
    char buf[4098];
    for (int i = 0; i < count; i++) {
        string link = string(linkDir) + to_string(i);
        if (readlink(link.c_str(), buf, 4098) == -1) {
            cout << "Error: Symlink resolving failed!" << endl;
        }
    }

    end = clock();

    elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    printf("Time for resolving %d symlinks: %lf\n", count, elapsed_secs);

    // Delete
    begin = clock();

    for (int i = 0; i < count; i++) {
        string link = string(linkDir) + to_string(i);
        if (unlink(link.c_str()) != 0) {
            cout << "Error: Symlink deleting failed!" << endl;
        }
    }

    end = clock();

    elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
    printf("Time for deleting %d symlinks: %lf\n", count, elapsed_secs);
}

int main() {
    TestSymlinks(10000);
    return 0;
}
