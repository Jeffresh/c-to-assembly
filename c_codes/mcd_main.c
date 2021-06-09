#include <stdio.h>
int y;

int mcd(int a, int b)
{
    int resto;
    while (b != 0)
    {
        resto = a % b;
        a = b;
        b = resto;
    }
    return a;
}

main()
{
    int x;
    printf("introduce dos enteros :");
    scanf("%d%d", &x, &y);
    printf("El mcd de %d y %d vale %d\n", x, y, mcd(x, y));
}