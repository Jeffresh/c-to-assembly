/******** factorial recursivo ********/
#include <stdio.h>

int m;
int fact(int n)
{
    if (n <= 1)
        return 1;
    else
        return n * fact(n - 1);
} // fin de fact()

int main(int argc, char *argv[])
{
    int n;
    printf("Teclea un entero\n");
    scanf("%d", &n);
    m = fact(n);
    printf("El factorial de %d = %d\n", n, m);
    return 0;
} // fin de main()