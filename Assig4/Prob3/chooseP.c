#include <stdio.h>
#include <inttypes.h>

int64_t chooseP(int64_t, int64_t);

int main()
{
    int64_t a;
    int64_t b;
    printf("Enter value of a: \n");
    scanf("%ld", &a);
    printf("Enter value of b: \n");
    scanf("%ld", &b);

    printf("\nResult of a choose b is : %ld\n", chooseP(a, b));
}
