/*
** EPITECH PROJECT, 2021
** cmd_basic
** File description:
** Because recover a line should be easy
*/

#include<stdio.h>
#include<stdlib.h>
#include "teklibc.h"

char *my_getline(void)
{
    size_t size = GET_LINE_BUFFER;
    char *str = (char *) malloc(size);
    int ctrd_check = -1;
    int len;

    ctrd_check = getline(&str, &size, stdin);
    if (ctrd_check == -1) {
        free(str);
        return NULL;
    }
    len = my_strlen(str);
    for (int i = len; i != -1; i--)
        if (str[i] == '\n')
            str[i] = '\0';
    return str;
}