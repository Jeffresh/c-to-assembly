/******** mayor de tres numeros ********/
#include <stdio.h>
int a, b, c;
int main(int argc, char *argv[])
{
    int mayor;
    printf("Teclea tres enteros: ");
    scanf("%d%d%d", &a, &b, &c);
    if (a >= b && a >= c)
        mayor = a;
    else if (b >= a && b >= c)
        mayor = b;
    else
        mayor = c;
    printf("El mayor es %d = %d\n", mayor);
    return 0;
} // fin de main()