
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int*arr ,int*count , int*Sum);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arr[]={1,2 ,3 ,-3,-5,-6,9,10} ;
    int count=0 ;
    int Sum = 0 ;
   
   // for Showing the Arrays how many times it will execute 
    printf("The array is:");
    for(int i=0;i<8;i++){
        printf("%d",arr[i]);
        printf(" ");
    }
    printf("\n");
    getch();  
    asmfunc(arr, &Sum , &count); 
    if(count==0){
        printf("there is no negative  number");
        return 0;
    }
    else{
    printf("The Sum of Negative  is: %d\n", Sum);
    printf("The Total  of Negative  is: %d\n", count);

    }

  
    
    return 0;
}