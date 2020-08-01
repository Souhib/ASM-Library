#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "../criterion/include/prototype.h"

int main()
{
    char *str1 = "blah";
    char *str2 = "bloh";


    puts("===== test de strlen =====\n\n");

    puts("===== Normal string =====\n\n");

    printf("Vrai strlen: %d\n", strlen("Bonjour"));
    printf("Mon strlen: %d\n\n", my_strlen("Bonjour"));

    puts("===== Empty string =====\n\n");

    printf("Vrai strlen: %d\n", strlen(""));
    printf("Mon strlen: %d\n\n", my_strlen(""));

    puts("===== Longue string =====\n\n");

    printf("Vrai strlen: %d\n", strlen("Bonjour à tous, j'espère que vous allez bien moi personnellement"));
    printf("Mon strlen: %d\n\n", my_strlen("Bonjour à tous, j'espère que vous allez bien moi personnellement"));

    puts("===== test de strchr =====\n\n");


    puts("===== Find 't' in toto =====\n\n");
    printf("Vrai strchr: %c\n", *strchr("toto", 't'));
    printf("Mon strchr: %c\n\n", *my_strchr("toto", 't'));

    puts("===== Find 'o' in toto =====\n\n");
    printf("Vrai strchr: %c\n", *strchr("toto", 'o'));
    printf("Mon strchr: %c\n\n", *my_strchr("toto", 'o'));

    puts("===== Find 'k' in toto =====\n\n");
    printf("Vrai strchr: %c\n", strchr("toto", 'k'));
    printf("Mon strchr: %c\n\n", my_strchr("toto", 'k'));

    puts("===== test de strcmp =====\n\n");

    puts("===== Cmp 1234 and 1234 =====\n\n");
    printf("Vrai strcmp: %d\nMon strcmp: %d\n\n", strcmp("1234", "1234"), my_strcmp("1234", "1234"));

    puts("===== Cmp 12345 and 1234 =====\n\n");
    printf("Vrai strcmp: %d\nMon strcmp: %d\n\n", strcmp("12345", "1234"), my_strcmp("12345", "1234"));

    puts("===== Cmp 1234 and 12345 =====\n\n");
    printf("Vrai strcmp: %d\nMon strcmp: %d\n\n", strcmp("12345", "12345"), my_strcmp("12345", "12345"));

    puts("===== Cmp 1234 and '' =====\n\n");
    printf("Vrai strcmp: %d\nMon strcmp: %d\n\n", strcmp("12345", ""), my_strcmp("12345", ""));

    puts("===== Cmp '' and '1' =====\n\n");
    printf("Vrai strcmp: %d\nMon strcmp: %d\n\n", strcmp("", "1"), my_strcmp("", "1"));

    puts("===== Cmp abc and abbcde =====\n\n");
    printf("Vrai strcmp: %d\nMon strcmp: %d\n\n", strcmp("abc", "abbcde"), my_strcmp("abc", "abbcde"));


    puts("===== test de strncmp =====\n\n");

    puts("===== Cmp 1234 and 1234 with n = 4 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("1234", "1234", 4), my_strncmp("abc", "abbcde", 4));

    puts("===== Cmp 1234 and 1234 with n = 1 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("1234", "1234", 1), my_strncmp("abc", "abbcde", 4));

    puts("===== Cmp 12345 and 1234 with n = 5 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "1234", 5), my_strncmp("12345", "1234", 5));

    puts("===== Cmp 12345 and 1234 with n = 5 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "1234", 5), my_strncmp("12345", "1234", 5));

    puts("===== Cmp 12345 and 1234 with n = 4 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "1234", 4), my_strncmp("12345", "1234", 4));

    puts("===== Cmp 12345 and 1234 with n = 4 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "1234", 4), my_strncmp("12345", "1234", 4));

    puts("===== Cmp 12345 and 1234 with n = 0 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "1234", 0), my_strncmp("12345", "1234", 0));

    puts("===== Cmp 1234 and 12345 with n = 5 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("1234", "12345", 5), my_strncmp("1234", "12345", 5));

    puts("===== Cmp 12345 and '' with n = 5 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "", 5), my_strncmp("12345", "", 5));

    puts("===== Cmp 12345 and '' with n = 0 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("12345", "", 0), my_strncmp("12345", "", 0));

    puts("===== Cmp '' and 1 with n = 1 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("", "1", 1), my_strncmp("", "1", 1));

    puts("===== Cmp '' and 1 with n = 1 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("", "1", 1), my_strncmp("", "1", 1));

    puts("===== Cmp abc and abbcde with n = 6 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("abc", "abbcde", 6), my_strncmp("abc", "abbcde", 6));

    puts("===== Cmp abc and abbcde with n = 7 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("abc", "abbcde", 7), my_strncmp("abc", "abbcde", 7));

    puts("===== Cmp ABCD and ABCDE with n = 5 =====\n\n");
    printf("Vrai strncmp: %d\nMon strncmp: %d\n\n", strncmp("ABCD", "ABCDE", 5), my_strncmp("ABCD", "ABCDE", 5));

    puts("===== test de rindex =====\n\n");

    puts("===== Rindex test with 't' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("test", 't'), my_rindex("test", 't'));

    puts("===== Rindex 1234 with '3' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("1234", '3'), my_rindex("1234", '3'));

    puts("===== Rindex azerrozfdifffffpofjnnpininpin with 'f' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("azerrozfdifffffpofjnnpininpin", 'f'), my_rindex("azerrozfdifffffpofjnnpininpin", 'f'));

    puts("===== Rindex 1234 with '4' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("1234", '4'), my_rindex("1234", '4'));

    puts("===== Rindex 1234 with '1' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("1234", '1'), my_rindex("1234", '1'));

    puts("===== Rindex 1234 with '\0' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("1234", '\0'), my_rindex("1234", '\0'));

    puts("===== Rindex 1234 with '\0' =====\n\n");
    printf("Vrai rindex: %s\nMon rindex: %s\n\n", rindex("1234", '\0'), my_rindex("1234", '\0'));

    puts("===== test de strstr =====\n\n");

    puts("===== Strstr AZCVAZDZD with A =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strstr("AZCVAZDZD", "A"), my_strstr("AZCVAZDZD", "A"));

    puts("===== Strstr a1z2e3r4 with A =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strstr("a1z2e3r4", "1"), my_strstr("a1z2e3r4", "1"));

    puts("===== Strstr 123456789 with 7 =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strstr("123456789", "7"), my_strstr("123456789", "7"));

    puts("===== Strstr '' with 'abc' =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strstr("", "abc"), my_strstr("", "abc"));

    puts("===== Strstr 'abc' with '' =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strstr("abc", ""), my_strstr("abc", ""));

    puts("===== Strstr 'abc' with '' =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strstr("abcde", ""), my_strstr("abcde", "cd"));


    puts("===== test de strpbrk =====\n\n");

    puts("===== Strpbrk Bonjour with no =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("Bonjour", "no"), my_strpbrk("Bonjour", "no"));

    puts("===== Strpbrk AZCVAZDZD with A =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("AZCVAZDZD", "A"), my_strpbrk("AZCVAZDZD", "A"));

    puts("===== Strpbrk a1z2e3r4 with A =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("a1z2e3r4", "1"), my_strpbrk("a1z2e3r4", "1"));

    puts("===== Strpbrk 123456789 with 7 =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("123456789", "7"), my_strpbrk("123456789", "7"));

    puts("===== Strpbrk '' with abc =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("", "abc"), my_strpbrk("", "abc"));

    puts("===== Strpbrk abc with '' =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("abc", ""), my_strpbrk("abc", ""));

    puts("===== Strpbrk abcde with cd =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("abcde", "cd"), my_strpbrk("abcde", "cd"));

    puts("===== Strpbrk abchabcd with cd =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("abchabcd", "cd"), my_strpbrk("abchabcd", "cd"));

    puts("===== Strpbrk abcde with ci =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("abcde", "ci"), my_strpbrk("abcde", "ci"));

    puts("===== Strpbrk abcde with CI =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("abcde", "CI"), my_strpbrk("abcde", "CI"));

    puts("===== Strpbrk abcdeabcide with ci =====\n\n");
    printf("Vrai strstr: %s\nMon strstr: %s\n\n", strpbrk("abcdeabcide", "ci"), my_strpbrk("abcdeabcide", "ci"));

    puts("===== test de strcasecmp =====\n\n");

    puts("===== CaseCMP 1234 with 1234 =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("1234", "1234"), my_strcasecmp("1234", "1234"));

    puts("===== CaseCMP abcd with abcd =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("abcd", "abcd"), my_strcasecmp("abcd", "abcd"));

    puts("===== CaseCMP 12345 with 1234 =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("12345", "1234"), my_strcasecmp("12345", "1234"));

    puts("===== CaseCMP ABCDE with ABCD =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("ABCDE", "ABCD"), my_strcasecmp("ABCDE", "ABCD"));

    puts("===== CaseCMP 1234 with 12345 =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("1234", "12345"), my_strcasecmp("1234", "12345"));

    puts("===== CaseCMP 1234 with '' =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("12345", ""), my_strcasecmp("12345", ""));

    puts("===== CaseCMP '' with 1 =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("", "1"), my_strcasecmp("", "1"));

    puts("===== CaseCMP abc with abbcde =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("abc", "abbcde"), my_strcasecmp("abc", "abbcde"));

    puts("===== CaseCMP aBc with abbbbcde =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("aBc", "abbbbcde"), my_strcasecmp("aBc", "abbbbcde"));

    puts("===== CaseCMP ABC with abbbbcde =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("ABC", "abbbbcde"), my_strcasecmp("ABC", "abbbbcde"));

    puts("===== CaseCMP abc with ABBBBCDE =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("abc", "ABBBBCDE"), my_strcasecmp("abc", "ABBBBCDE"));

    puts("===== CaseCMP abc with abBbbCde =====\n\n");
    printf("Vrai strstr: %d\nMon strstr: %d\n\n", strcasecmp("abc", "AbBbbCde"), my_strcasecmp("abc", "AbBbbCde"));

    puts("===== test de strcspn =====\n\n");

    puts("===== Strcspn AZCVAZDZD with 3678651 =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("AZCVAZDZD", "3678651"), my_strcspn("AZCVAZDZD", "3678651"));

    puts("===== Strcspn a1z2e3r4 with fjoijggioja =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("a1z2e3r4", "fjoijggioja"), my_strcspn("a1z2e3r4", "fjoijggioja"));

    puts("===== Strcspn 123456789 with zertyuikjvvcertyun3 =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("123456789", "zertyuikjvvcertyun3"), my_strcspn("123456789", "zertyuikjvvcertyun3"));

    puts("===== Strcspn aqwzsxedcrfvAZEAAZ with Z =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("aqwzsxedcrfvAZEAAZ", "Z"), my_strcspn("aqwzsxedcrfvAZEAAZ", "Z"));

    puts("===== Strcspn aihbidhzcsd with A =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("aihbidhzcsd", "A"), my_strcspn("aihbidhzcsd", "A"));

    puts("===== Strcspn 4657879EDI with %/£%µ =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("4657879EDI", "%/£%µ"), my_strcspn("4657879EDI", "%/£%µ"));

    puts("===== Strcspn AZCVAZDZD with '' =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("AZCVAZDZD", ""), my_strcspn("AZCVAZDZD", ""));

    puts("===== Strcspn '' with abc =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("", "abc"), my_strcspn("", "abc"));

    puts("===== Strcspn '' with '' =====\n\n");
    printf("Vrai strcspn: %ld\nMon strcspn: %ld\n\n", strcspn("", ""), my_strcspn("", ""));

    return(0);
}