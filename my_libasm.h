#ifndef MY_LIBASM_H
#define MY_LIBASM_H

#include <stddef.h>
#include <unistd.h>

size_t my_strlen(const char *str);
char *index(const char *s, int c);
void *memcpy(void *dest, const void *src, size_t n);
void *memmove(void *dest, const void *src, size_t n);
void *memset(void *s, int c, size_t n);
ssize_t read(int fd, void *buf, size_t count);
int strcasecmp(const char *s1, const char *s2);
size_t my_strchr(const char *str_1, int c);
int my_strcmp(const char *str_1, const char *str_2);
int strncmp(const char *s1, const char *s2, size_t n);
ssize_t write(int fd, const void *buf, size_t count);

#endif  // MY_LIBASM_H