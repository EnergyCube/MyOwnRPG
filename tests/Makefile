##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## Matchstick C Project Makefile
##

# GCC ARGS HELPER
# -Werror = Make all warnings into errors
# -Wall = show all warnings flags
# -Wextra = show all extra warnings flags

MATH = 0

UNIT_SRC	=	./unit_tests.c

UNIT_OBJ =	$(UNIT_SRC:.c=.o)

NAME_LIB =	teklibc.a

NAME =	unit_tests

CFLAGS += -Wall -Wextra -I../include --coverage

CSFML_ARGS = -lcsfml-graphics -lcsfml-system -lcsfml-window -lcsfml-audio

ifeq ($(MATH), 1)
	GCC_ARGS +=	-lm
	CFLAGS += -lm
endif

all: tests_run

$(NAME_LIB):
	$(MAKE) -C ../lib

$(NAME): tests_run

clean:
	rm -f $(UNIT_OBJ)
	rm -rf ../src/*.gc*
	rm -rf ../tests/*.gc*
	$(MAKE) -C ../lib clean

fclean:	clean
	rm -f ../$(NAME)
	$(MAKE) -C ../lib fclean

tests_run: $(NAME_LIB) $(UNIT_OBJ)
	gcc -o ../$(NAME) $(UNIT_OBJ) $(GCC_ARGS) ../lib/$(NAME_LIB) $(CSFML_ARGS) -lcriterion --coverage
	../$(NAME)

re: fclean all

.PHONY: all clean fclean re