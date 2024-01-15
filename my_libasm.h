#ifndef MY_LIBASM_H
#define MY_LIBASM_H

#include <stddef.h>
#include <unistd.h>

extern size_t my_strlen(const char *str);
extern char *index(const char *s, int c);
extern void *memcpy(void *dest, const void *src, size_t n);
extern void *memmove(void *dest, const void *src, size_t n);
extern void *memset(void *s, int c, size_t n);
extern ssize_t read(int fd, void *buf, size_t count);
extern int strcasecmp(const char *s1, const char *s2);
extern char *my_strchr(const char *str_1, int c);
extern int my_strcmp(const char *str_1, const char *str_2);
extern int strncmp(const char *s1, const char *s2, size_t n);
extern ssize_t write(int fd, const void *buf, size_t count);

#endif  // MY_LIBASM_H