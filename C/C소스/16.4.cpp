#include <stdio.h>	//표준입출력 헤더파일 생성 
int main()	//main함수
{
	int i, j;
	// 2차원 배열 초기화의 예
	int arr1[3][3]={
	{1,2,3},	//1층 
	{4,5,6},	//2층 
	{7,8,9}		//3층  
	};
	//2차원 배열 초기화의 예 2
	int arr2[3][3]={
	{1},
	{4,5},
	{7,8,9}
	};
	//2차원 배열 초기화의 예 3 
	int arr3[3][3]=	{1,2,3,4,5,6,7};
	
	for(i=0; i<3; i++)	//반복문 중첩(세로) 
{
for(j=0; j<3; j++)		//반복문 중첩(가로)
	{
	printf("%d", arr1[i][j]);	// 2차원 배열 초기화의 예
	}
}
printf("\n");	//줄 바꿈  

	for(i=0; i<3; i++)	//반복문 중첩(세로)
{
for(j=0; j<3; j++)	//반복문 중첩(가로)
	{
	printf("%d", arr2[i][j]);	// 2차원 배열 초기화의 예2
	}
}
printf("\n");	//줄 바꿈  

	for(i=0; i<3; i++)	//반복문 중첩(세로)
{
for(j=0; j<3; j++)	//반복문 중첩(가로)
	{
	printf("%d", arr3[i][j]);	// 2차원 배열 초기화의 예23
	}
}
return 0;	//메인함수종료  
}
