//Program to find the maximum and the minimum elements in an array
#include<stdio.h>
#include<inttypes.h>

int64_t max_ele(int64_t  [], uint64_t);

int main(){
        long int arr[ ]={10, 20, 44, 99, 102, 55, -10, -2};
	printf("\n Maximum element is %ld \n", max_ele(arr,8));
	return 0;
}
