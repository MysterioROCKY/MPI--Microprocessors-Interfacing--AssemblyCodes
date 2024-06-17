#include <stdio.h>
#include <inttypes.h>

int64_t gcd(int64_t[], uint64_t);

int main(){
    long int n;
    printf("Enter the value of n: ");
    scanf("%ld", &n);

    long int a[n];
    printf("Enter the array of elements:\n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }

    long int res_gcd = gcd(a, n);
    printf("\nGCD of the given numbers: %ld\n", res_gcd);

    return 0;
}