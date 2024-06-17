#include <stdio.h>
#include <inttypes.h>

int64_t sort(int64_t[], int64_t);
int64_t mode(int64_t[], int64_t);

int main(){
    long int n ;
    printf("\nGive the size of array: \n");
    scanf("%ld", &n);
    long int a[n];
    printf("\nEnter the array elements: \n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }
    long int sorted = sort(a, n);
    long int mode_n = mode(a, n);
    
    printf("\nThe mode of the given array is: %ld\n", mode_n);
    return 0;
}