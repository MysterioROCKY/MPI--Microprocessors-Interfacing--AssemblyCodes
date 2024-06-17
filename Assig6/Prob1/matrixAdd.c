#include<stdio.h>
#include<inttypes.h>
//rdi rsi rdx
void matadd(int64_t [], int64_t [], int64_t);

 int main(){
    long int n;
    printf("Enter the value of n: ");
    scanf("%ld", &n);
    
    long int a[n*n], b[n*n];
    /*
    Logic:
    let n=3
    i=0,1,2
    j=0,1,2
        i=0: 
            j=0: a[0] 
            j=1: a[1]
            j=2: a[2]
        
        i=1:
            j=0: a[3]
            j=1: a[4]
            j=2: a[5]
        i=2:
            j=0: a[6]
            j=1: a[7]
            j=2: a[8]
    */
   
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
        }

   //rdi, rsi, rdx
    matadd(a,b,n*n);
    //Printing the result
    printf("\n\nAfter matrix addition:\n");
    for(long int i=0; i<n; i++){
        for(long int j=0; j<n; j++)
            printf("\t %ld", a[i*n+j]);
        
        printf("\n");
    }       
    return 0;

 }