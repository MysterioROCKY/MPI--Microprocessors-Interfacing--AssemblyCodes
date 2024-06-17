#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

char *addBinary(char *a, char *b)
{
    int len_a = strlen(a);
    int len_b = strlen(b);
    int max_len = (len_a > len_b) ? len_a : len_b;
    char *result = (char *)malloc((max_len + 1) * sizeof(char));
    result[max_len] = '\0';
    int carry = 0;
    int index = max_len - 1;

    while (index >= 0)
    {
        int sum = carry;
        if (len_a > 0)
        {
            sum += a[--len_a] - '0';
        }
        if (len_b > 0)
        {
            sum += b[--len_b] - '0';
        }
        result[index--] = (sum % 2) + '0';
        carry = sum / 2;
    }
    if (carry)
    {
        char *newResult = (char *)malloc((max_len + 2) * sizeof(char));
        newResult[0] = '1';
        strcpy(newResult + 1, result);
        free(result);
        return newResult;
    }
    return result;
}

char *multiplyBinary(char *a, char *b)
{
    int len_a = strlen(a);
    int len_b = strlen(b);
    int result_len = len_a + len_b;
    char *result = (char *)malloc((result_len + 1) * sizeof(char));
    result[result_len] = '\0';
    
    for (int i = 0; i < result_len; i++)
    {
        result[i] = '0';
    }
    for (int i = len_a - 1; i >= 0; i--)
    {
        for (int j = len_b - 1; j >= 0; j--)
        {
            int mul = (a[i] - '0') * (b[j] - '0');
            int sum = mul + (result[i + j + 1] - '0');
            result[i + j + 1] = (sum % 2) + '0';
            result[i + j] += sum / 2;
        }
    }
    return result;
}

int main()
{
    char num1[33], num2[33];
    printf("Enter the first 32-bit binary number: ");
    scanf("%32s", num1);

    printf("Enter the second 32-bit binary number: ");
    scanf("%32s", num2);

    char *sum = addBinary(num1, num2);
    char *product = multiplyBinary(num1, num2);

    printf("Result of Binary Addition: %s\n", sum);
    printf("Result of Binary Multiplication: %s\n", product);
    free(sum);
    free(product);

    return 0;
}