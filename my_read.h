#ifndef MY_READ_H
#define MY_READ_H

#include <unistd.h>

ssize_t read(int fd, void *buf, size_t count);

#endif  // MY_READ_H

