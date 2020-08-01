/*
** EPITECH PROJECT, 2017
** my.h
** File description:
** my.h
*/

#ifndef MY_H_
#define MY_H_

extern size_t my_strlen(const char *s);
extern char *my_strchr(const char *s, int c);
extern int my_strcmp(const char *s1, const char *s2);
extern int my_strncmp(const char *s1, const char *s2, size_t n);
extern void *my_memset(void *s, int c, size_t n);
extern void *my_memcpy(void *dest, const void *src, size_t n);
extern void *my_memmove(void *dest, const void *src, size_t n);
extern char *my_rindex(const char *s, int c);
extern char *my_strstr(const char *haystack, const char *needle);
extern int my_strcasecmp(const char *s1, const char *s2);
extern char *my_strpbrk(const char *s, const char *accept);
extern size_t my_strcspn(const char *s, const char *reject);

#endif /* MY_H_ */