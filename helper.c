#include "helper.h" 


int main(int ac, char **av) {
    if (strcmp(av[1], "my_strlen") == 0) {
        my_strlen(av[2]);
    }

    return 0;
} 

int my_strlen(char* str) 
{
    int i = 0;

    do {
        i += 1;
    } while (str[i] != '\0');

    printf("my_strlen: %d\n", i);
    return i;
}

char *my_strncpy(char* dst, char* src, int n)
{
    char* original_dst = dst;
    int i;

    for (i = 0; i < n; i++) {
        *dst++ = *src++;
    }

    *--dst = '\0';

    return original_dst;
}


char *my_strcpy(char* dst, char* src)
{
    int i;

    for (i = 0; i < my_strlen(src); i++) {
        dst[i] = src[i]; 
    }

    dst[i] = '\0';
    
    return dst;
}

char *my_strcat(char *dst, char *src) 
{ 
    // Save original destination pointer
    char *original_dst = dst; 
    
    // Move destination pointer to the end of the first string
    while (*dst != '\0') {
        dst += 1;
    }

    // Copy characters from src to dst
    while (*src != '\0') {
        *dst = *src;
        dst += 1;
        src += 1;
    }

    // Null-terminate 
    *dst = '\0';

    return original_dst;
}

char* my_strchr(char* str_1, char char_1)
{
    int i;

    for (i = 0; i <= my_strlen(str_1); i++) {
        if (str_1[i] == char_1) {
            return &str_1[i];
        }
    }

    return "";
}

void my_putstr(char* str)
{
    write(STDOUT_FILENO, str, my_strlen(str)); 
}

void my_putstrerr(char* str)
{
    write(STDERR_FILENO, str, my_strlen(str));
}

// void *memset(void *str, int c, size_t n)
// {
// // Parameters
// // str − This is a pointer to the block of memory to fill.

// // c − This is the value to be set. The value is passed as an int, but the function fills the block of memory using the unsigned char conversion of this value.

// // n − This is the number of bytes to be set to the value.

// // Return Value
// // This function returns a pointer to the memory area str.
// }

// void *memcpy(void *dest, const void * src, size_t n)
// {
// // Description
// // The C library function void *memcpy(void *dest, const void *src, size_t n) copies n characters from memory area src to memory area dest.

// // Declaration
// // Following is the declaration for memcpy() function.

// // void *memcpy(void *dest, const void * src, size_t n)
// // Parameters
// // dest − This is pointer to the destination array where the content is to be copied, type-casted to a pointer of type void*.

// // src − This is pointer to the source of data to be copied, type-casted to a pointer of type void*.

// // n − This is the number of bytes to be copied.

// // Return Value
// // This function returns a pointer to destination, which is str1.
// }

// void *memmove(void *str1, const void *str2, size_t n)
// {
// // Description
// // The C library function void *memmove(void *str1, const void *str2, size_t n) copies n characters from str2 to str1, but for overlapping memory blocks, memmove() is a safer approach than memcpy().

// // Declaration
// // Following is the declaration for memmove() function.

// // void *memmove(void *str1, const void *str2, size_t n)
// // Parameters
// // str1 − This is a pointer to the destination array where the content is to be copied, type-casted to a pointer of type void*.

// // str2 − This is a pointer to the source of data to be copied, type-casted to a pointer of type void*.

// // n − This is the number of bytes to be copied.

// // Return Value
// // This function returns a pointer to the destination, which is str1.

// // Example
// // The following example shows the usage of memmove() function.
// }