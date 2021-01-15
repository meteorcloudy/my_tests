#include <stdio.h>
#include <stdlib.h>

void check_ans(int ans) {
    if (ans == 42) {
        return;
    }
    printf("Wrong answer!\n");
    exit(1);
}
