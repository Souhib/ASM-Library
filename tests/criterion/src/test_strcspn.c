#include <criterion/criterion.h>
#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "prototype.h"

Test(sample, test_strcspn_normal_no_match) {
    cr_assert(strcspn("a1z2e3r4", "fjoijggioja") == my_strcspn("a1z2e3r4", "fjoijggioja"));
}

Test(sample, sample_test_strcspn_normal_string_with_match) {
    cr_assert(strcspn("123456789", "zertyuikjvvcertyun3") == my_strcspn("123456789", "zertyuikjvvcertyun3"));
}

Test(sample, test_strcspn_normal_string_no_match_v2) {
    cr_assert(my_strcspn("AZCVAZDZD", "3678651") == strcspn("AZCVAZDZD", "3678651"));
}

Test(sample, test_strcspn_normal_string_with_match_v2) {
    cr_assert(strcspn("aqwzsxedcrfvAZEAAZ", "Z") == my_strcspn("aqwzsxedcrfvAZEAAZ", "Z"));
}

Test(sample, test_strcspn_no_match_caps) {
    cr_assert(strcspn("aihbidhzcsd", "A") == my_strcspn("aihbidhzcsd", "A"));
}

Test(sample, test_strcspn_no_match) {
    cr_assert(strcspn("4657879EDI", "%/£%µ") == my_strcspn("4657879EDI", "%/£%µ"));
}

Test(sample, test_strcspn_second_string_empty) {
    cr_assert(strcspn("AZCVAZDZD", "") == my_strcspn("AZCVAZDZD", ""));
}

Test(sample, test_strcspn_first_string_empty) {
    cr_assert(strcspn("", "abc") == my_strcspn("", "abc"));
}

Test(sample, test_strcspn_everything_empty) {
    cr_assert(strcspn("", "") == my_strcspn("", ""));
}