#include "my_libasm.h"
#include "stdio.h"

size_t strlen(const char *str) 
{
    size_t result = my_strlen(str);

    return result;
}

// char *index(const char *s, int c) 
// {
//     char *result = my_index(s, c);

//     return result;
// }

// void *memcpy(void *dest, const void *src, size_t n) 
// {
//     void *result = my_memcpy(dest, src, n);

//     return result;
// }

// void *memmove(void *dest, const void *src, size_t n) 
// {
//     void *result = my_memcpy(dest, src, n);

//     return result;
// }

// void *memset(void *s, int c, size_t n)  
// {
//     void *result = my_memset(s, c, n);

//     return result;
// }

// ssize_t read(int fd, void *buf, size_t count) 
// {
//     ssize_t result = my_read(fd, buf, count);

//     return result;
// }

// int strcasecmp(const char *s1, const char *s2) 
// {
//     int result = my_strcasecmp(s1, s2);

//     return result;
// }

// char *strchr(const char *str_1, int c) 
// {
//     char *result = my_strchr(str_1, c);

//     return result;
// }


// int strcmp(const char *str_1, const char *str_2) 
// {
//     int result = my_strcmp(str_1, str_2);

//     return result;
// }

// int strncmp(const char *s1, const char *s2, size_t n) 
// {
//     int result = my_strncmp(s1, s2, n);

//     return result;
// }

// ssize_t write(int fd, const void *buf, size_t count)
// {
//     ssize_t result = my_write(fd, buf, count);

//     return result;
// }

int main() {
    char *str = "hello world!";

    size_t res = strlen(str);

    printf("res = %lu", res);
    return 0;    
}