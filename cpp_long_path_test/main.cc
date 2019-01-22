#include <fstream>

using namespace std;

int main() {
  ifstream f("\\\\?\\c:\\Users\\pcloudy\\workspace\\launcher_test\\very_very_very_long_long_long_path\\another_very_very_very_long_path\\last_very_very_very_very_long_path\\more_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_path\\more_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_path\\file", ios::binary | ios::in);
  if (f.is_open()) {
    printf("File opened\n");
  } else {
    printf("File not opened\n");
  }
  return 0;
}