#include<stdio.h>
#include<inttypes.h>

int64_t Even(int64_t, uint64_t);

int main()
{
    long int A[] = {1, 90, 60, 51, 11, 98, 12, 90, 43, 6};
    printf("\n Total Even Numbers is %ld \n", Even(A, 10));
    return 0;
}