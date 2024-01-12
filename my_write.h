#ifndef MY_WRITE_H
#define MY_WRITE_H

#include <unistd.h>

ssize_t write(int fd, const void *buf, size_t count);

#endif  // MY_WRITE_H