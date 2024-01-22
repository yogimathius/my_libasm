#include "my_libasm.h"
#include "stdio.h"
#include <fcntl.h>

// size_t asm_strlen(const char *str) 
// {
//     size_t result = my_strlen(str);

//     return result;
// }

// char *asm_index(const char *s, int c) 
// {
//     char *result = my_index(s, c);

//     return result;
// }

// void *asm_memcpy(void *dest, const void *src, size_t n) 
// {
//     void *result = my_memcpy(dest, src, n);

//     return result;
// }

void *asm_memmove(void *dest, const void *src, size_t n) 
{
    void *result = my_memmove(dest, src, n);

    return result;
}

// ssize_t asm_read(int fd, void *buf, size_t count) 
// {
//     ssize_t result = my_read(fd, buf, count);

//     return result;
// }

// int asm_strcasecmp(const char *s1, const char *s2) 
// {
//     int result = my_strcasecmp(s1, s2);

//     return result;
// }

// char *asm_strchr(const char *str_1, int c) 
// {
//     char *result = my_strchr(str_1, c);

//     return result;
// }

// int asm_strcmp(const char *str_1, const char *str_2) 
// {
//     int result = my_strcmp(str_1, str_2);

//     return result;
// }

// int asm_strncmp(const char *s1, const char *s2, size_t n) 
// {
//     int result = my_strncmp(s1, s2, n);

//     return result;
// }

// ssize_t asm_write(int fd, const void *buf, size_t count)
// {
//     ssize_t result = my_write(fd, buf, count);

//     return result;
// }

int main() {
    char ptr[] = "hello world! this is a test";
    char *s1 = "hello world!";
    char *s2 = "hello world";
    char *s3 = "AndNow for Something Completely DIFF";
    char c = 'w';
    size_t n = 5;
    size_t m = 30;
    char file[] = "myfile.txt";
    int fd = open(file, O_RDWR);

    // size_t res_strlen = asm_strlen(s1);
    // char *res_index = asm_index(s1, c);
    // char *res_strchr = asm_strchr(s1, c);
    // int res_strcmp = asm_strcmp(s1, s2);
    // int res_strncmp = asm_strncmp(s1, s2, n);
    // void *res_memcpy = asm_memcpy(ptr, s3, n);
    // void *res_memset = asm_memset(ptr, c, n);
    void *res_memmove = asm_memmove(ptr + 10, ptr, m);

    // printf("res_strlen = %lu\n", res_strlen);
    // if (res_index) {
    //     printf("res_index = %s\n", res_index);
    // }
    // if (res_strchr) {
    //     printf("res_strchr = %s\n", res_strchr);
    // }
    // char buf[100];

    // size_t bytes_read = asm_read(fd, buf, 100);
    // char buff_to_write[13] = "hello world";
    // size_t bytes_read = asm_write(fd, buff_to_write, 13);
    // printf("bytes written: %lu", bytes_read);
    // printf("res_strcmp = %i\n", res_strcmp);
    // printf("res_strncmp = %i\n", res_strncmp);
    // printf("res_memcpy = %s\n", ptr);
    // printf("res_memset = %p\n", res_memset);
    printf("res_memmove = %s\n", ptr);

    return 0;    
}