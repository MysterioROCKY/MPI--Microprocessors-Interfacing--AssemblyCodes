#include <stdio.h>
#include <inttypes.h>

int64_t sort(int64_t[], int64_t);
int64_t median(int64_t[], int64_t);

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
    long int median_n = median(a, n);
    
    printf("\nThe median of the given array is: %ld\n", median_n);

    return 0;
}