#include <criterion/criterion.h>
#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "prototype.h"

Test(sample, test_strncmp_same_string) {
    cr_assert(my_strncmp("1234", "1234", 4) == strncmp("1234", "1234", 4));
}

Test(sample, test_strncmp_same_string_v2) {
    cr_assert(my_strncmp("12345", "12345", 2) == strncmp("12345", "12345", 2));
}

Test(sample, test_strncmp_different_size) {
    cr_assert(my_strncmp("abc", "abbcde", 4) == strncmp("abc", "abbcde", 4));
}