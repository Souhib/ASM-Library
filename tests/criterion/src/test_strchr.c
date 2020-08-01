#include <criterion/criterion.h>
#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "prototype.h"

Test(sample, test_strchr_normal_string) {
    cr_assert(my_strchr("toto", 't') == strchr("toto", 't'));
}

Test(sample, sample_test_strchr_normal_string_extra) {
    cr_assert(my_strchr("toto", 'o') == strchr("toto", 'o'));
}

Test(sample, test_strchr_normal_string_no_match) {
    cr_assert(my_strchr("toto", 'k') == strchr("toto", 'k'));
}