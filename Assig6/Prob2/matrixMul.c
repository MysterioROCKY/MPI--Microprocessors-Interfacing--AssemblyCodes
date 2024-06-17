# include <stdio.h>
# include <inttypes.h>
# include <stdlib.h>

void multiply(int64_t [], int64_t [], uint64_t size, int64_t []);

int main(void){
    int64_t n;
    printf("Size of matrix (n): ");
    scanf("%ld", &n);
    long int *a = (long *)malloc(n*n*sizeof(long));
    long int *b = (long *)malloc(n*n*sizeof(long));
    long int *c = (long *)malloc(n*n*sizeof(long));

    printf("\nEnter matrix values for A: \n");
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++){
            long int k;
            scanf("%ld", &k);
            a[i*n+j] = k;
        }
    
    printf("\nEnter matrix values for B: \n");
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++){
            long int k;
            scanf("%ld", &k);
            b[i*n+j] = k;
            c[i*n+j] = 0;
        }

    multiply(a, b, n, c);

    printf("\n\nMatrix multiplication of A*B: \n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("%ld ", c[i*n+j]);
        }
        printf("\n");
    }

    return 0;
}

/*
test case:
3
1 2 3
3 4 2
3 2 1
1 1 1
3 4 2
3 2 1
*/