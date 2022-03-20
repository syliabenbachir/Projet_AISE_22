#include <stdio.h>


/*void do_stuff()
{
    printf("Hello, ");
}*/

void lance_erreur_segmentation() 
{ 
 int *pointeur_dangereux=(int *) 100; 
 int test=*pointeur_dangereux; 
} 



int main()
{
   /*printf("programme Hello world\n");
   for (int i = 0; i < 4; ++i)
        do_stuff();
    printf("world!\n");
    return 0;*/
    
    printf("erreur de segementation\n");
    lance_erreur_segmentation(); 
    return 0; 
   
}
