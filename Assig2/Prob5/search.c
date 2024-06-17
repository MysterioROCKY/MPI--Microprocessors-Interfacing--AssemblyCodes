//Linear Search
#include<stdio.h>
#include<inttypes.h>
// 1st-arg:array name, 2nd-arg:array size, 3rd-arg:key
int64_t lSearch(int64_t  [], uint64_t, int64_t);// 

int main(){
        long int A[ ]={10, 20, 50, 100, 250, 98, 77, 83};
	long int key, pos;
	for(long int i=0;i<8;i++)
		printf("\t %ld",A[i]);
	printf("\n Enter the key you want to search:");
	scanf("%ld",&key);
	pos=lSearch(A, 8, key);
	printf("\n Position of key( %ld ) is %ld \n",key, pos);
	return 0;
}
