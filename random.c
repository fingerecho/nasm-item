#include<stdio.h>	//printf
#include<stdlib.h>	//srand rand
#include<time.h>	//time

int main(int argc,char* argv[])
{
	srand(time(0));
	for(int i=0;i<1024;i++)
	{
		printf("%d random number:%d\n",i,rand());
	}
	return 0;
}
