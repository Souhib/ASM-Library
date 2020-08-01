#include <stdio.h>
#include <string.h>
#include <unistd.h>

extern size_t strlen(const char *s);
extern char *strchr(const char *s, int c);
extern int my_strcmp(const char *s1, const char *s2);
extern int my_strncmp(const char *s1, const char *s2, size_t n);
extern void *memset(void *s, int c, size_t n);
extern void *memcpy(void *dest, const void *src, size_t n);
extern void *my_memmove(void *dest, const void *src, size_t n);
extern char *rindex(const char *s, int c);
extern char *my_strstr(const char *haystack, const char *needle);
extern int my_strcasecmp(const char *s1, const char *s2);
extern char *my_strpbrk(const char *s, const char *accept);
extern ssize_t my_write(int fd, const void *buf, size_t count);



int main()
{
    write (1, "yo les boys\n", 14);
    my_write (1, "yo les boys\n", 14);
    return(0);
}