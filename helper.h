#include <stdio.h>
#include <unistd.h>
#include <string.h>

// function prototypes
int my_strlen(char* str);
char *my_strchr(char* str_1, char char_1);
void *my_memset(void *str, int c, size_t n);
void *my_memcpy(void *dest, const void * src, size_t n);
void *my_memmove(void *str1, const void *str2, size_t n);
char *my_strcpy(char* dst, char* src);
char *my_strcat(char *dst, char *src);
char *my_strncpy(char* dst, char* src, int n);
size_t my_read();
size_t my_write();
void my_putstr(char* str);
void my_putstrerr(char* str);
// bool my_isalnum(char c);