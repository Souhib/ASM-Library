#include <criterion/criterion.h>
#include <stdlib.h>
#include <signal.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "prototype.h"

Test(sample, test_strlen_normal_string) {
    cr_assert(my_strlen("bonjour") == strlen("bonjour"));
}

Test(sample, test_strlen_empty) {
    cr_assert(my_strlen("") == strlen(""));
}

Test(sample, test_strlen_longue_string) {
    cr_assert(my_strlen("bonjour à tous les amis ça va les potos dla street zeir ?") == strlen("bonjour à tous les amis ça va les potos dla street zeir ?"));
}