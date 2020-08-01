#include <criterion/criterion.h>
#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "prototype.h"

Test(sample, test_strcmp_same_string) {
    cr_assert(my_strcmp("1234", "1234") == strcmp("1234", "1234"));
}

Test(sample, test_strcmp_same_string_v2) {
    cr_assert(my_strcmp("12345", "12345") == strcmp("12345", "12345"));
}

Test(sample, test_strcmp_different_size) {
    cr_assert(my_strcmp("abc", "abbcde") == strcmp("abc", "abbcde"));
}