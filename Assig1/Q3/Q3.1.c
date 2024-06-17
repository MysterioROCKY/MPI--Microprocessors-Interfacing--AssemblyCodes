#include <stdio.h>
void int_Rep(void *data, size_t size) {
    unsigned char *byte = (unsigned char *)data;
    for (int i = size - 1; i >= 0; i--) {
        for (int j = 7; j >= 0; j--) {
            printf("%d", (byte[i] >> j) & 1);
        }
        printf(" ");
    }
    printf("\n");
}
int main() {
    int val_int;
    float val_float;
    double val_double;

    printf("Enter an integer value: ");
    scanf("%d", &val_int);

    printf("Enter a float value: ");
    scanf("%f", &val_float);

    printf("Enter a double value: ");
    scanf("%lf", &val_double);

    printf("Internal representation of int: ");
    int_Rep(&val_int, sizeof(int));

    printf("Internal representation of float: ");
    int_Rep(&val_float, sizeof(float));

    printf("Internal representation of double: ");
    int_Rep(&val_double, sizeof(double));

 return 0;
}