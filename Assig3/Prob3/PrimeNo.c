#include<stdio.h>
#include<inttypes.h>

int64_t PrimeNo(int64_t [], uint64_t);

 int main(){
        long int n;
        printf("Enter the value of n: ");
        scanf("%ld", &n);

        long int arr[n];
        for(long int i=0; i<n; i++)
                scanf("%ld", &arr[i]);
        
        printf("\nNumber of prime numbers is: %ld\n",PrimeNo(arr,n));
        return 0;

 }


