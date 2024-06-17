#include <stdio.h>
#include <inttypes.h>

int64_t quotientP(int64_t, int64_t);

int main()
{
    int64_t a;
    int64_t b;
    printf("Enter value of a: \n");
    scanf("%ld", &a);
    printf("Enter value of b: \n");
    scanf("%ld", &b);

    printf("\nResult of (a^3 - b^3)/(a + b) is : %ld\n", quotientP(a, b));
}
