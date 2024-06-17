#include <stdio.h>
#include <inttypes.h>

int64_t lcm(int64_t[], int64_t);

int main(){
    long int n;
    printf("Enter the value of n: ");
    scanf("%ld", &n);

    long int a[n];
    printf("Enter the array of elements:\n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }

    long int res_lcm = lcm(a, n);
    printf("LCM of the given numbers: %ld\n", res_lcm);

    return 0;
}