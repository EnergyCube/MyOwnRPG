##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Makefile for V.M. Tek Lib C
##

SRC	=	./str/str_basic.c	\
		./str/str_more.c	\
		./str/token.c	\
		./char/char_basic.c	\
		./int/int_basic.c	\
		./vector/vector_basic.c	\
		./vector/vector_more.c	\
		./file/file_basic.c	\
		./cmd/cmd_basic.c	\
		./utils/main_args.c	\
		./utils/lib_info.c

OBJ	=	$(SRC:.c=.o)

NAME =	teklibc.a

CFLAGS = -Wall -Wextra -I../include

all:	$(NAME)

$(NAME): 	$(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)
	rm -f unit_tests

re: fclean all

.PHONY: all clean fclean