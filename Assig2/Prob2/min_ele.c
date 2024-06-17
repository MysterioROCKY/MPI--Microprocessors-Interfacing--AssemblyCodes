//Program to find the maximum and the minimum elements in an array
#include<stdio.h>
#include<inttypes.h>

int64_t min_ele(int64_t  [], uint64_t);

int main(){
        long int arr[ ]={10, 20, 44, 99, 102, 55, -10, -2};
	printf("\n Minimum element is %ld \n", min_ele(arr,8));
	return 0;
}
