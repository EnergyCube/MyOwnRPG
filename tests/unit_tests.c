/*
** EPITECH PROJECT, 2020
** unit_tests
** File description:
** unit_tests
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "teklibc.h"
#include "rpg.h"

void redirect_all_std(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(my_template_test_unit, simple_string, .init = redirect_all_std)
{
    my_putstr("V.M. Template C Project !");
    cr_assert_stdout_eq_str("V.M. Template C Project !");
}