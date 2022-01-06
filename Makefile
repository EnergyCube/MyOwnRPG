##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Any C-SFML Project Makefile
##

# GCC ARGS HELPER
# -Werror = Make all warnings into errors
# -Wall = show all warnings flags
# -Wextra = show all extra warnings flags
# -Wno-unused = remove unused things warning
#
# DEBUG :
# 0 : Don't compile with g3 and allow warnings
# 1 : Compile with g3 and allow warnings
# 2 : Compile with g3 and don't allow warnings

DEBUG = 0

MATH = 1

PROJECT_SRC	=	./src/main.c	\
				./src/game.c	\
				./src/game_more.c	\
				./src/window.c	\
				./src/game_event.c	\
				./src/font.c	\
				./src/camera/camera.c	\
				./src/camera/camera_transition.c	\
				./src/utils/sfml_extra.c	\
				./src/utils/sfml_extra_more.c	\
				./src/utils/config_core.c	\
				./src/utils/config_manager.c	\
				./src/utils/config_rpg.c	\
				./src/player/player.c	\
				./src/player/player_more.c	\
				./src/player/player_life_hud.c	\
				./src/player/player_camera_hud.c	\
				./src/player/player_camera_hud_more.c \
				./src/map/map.c	\
				./src/map/map_more.c	\
				./src/entity/entity.c	\
				./src/entity/entity_more.c	\
				./src/entity/type/medic.c	\
				./src/entity/type/enemy.c	\
				./src/entity/type/enemy_more.c	\
				./src/music/music.c	\
				./src/music/music_more.c	\
				./src/music/sound.c	\
				./src/music/sound_more.c	\
				./src/building/building.c	\
				./src/building/building_more.c	\
				./src/building/type/tree.c	\
				./src/building/type/rock.c	\
				./src/building/type/mountains.c	\
				./src/building/type/door.c	\
				./src/building/type/key.c	\
				./src/building/type/key_more.c	\
				./src/particule/particule.c	\
				./src/particule/particule_more.c	\
				./src/particule/type/heal.c	\
				./src/particule/type/heal_more.c	\
				./src/menu/menu.c	\
				./src/menu/pause_menu.c	\
				./src/menu/pause_more.c	\
				./src/menu/main_menu.c	\
				./src/menu/main_menu_more.c	\
				./src/menu/settings_menu.c	\
				./src/menu/settings_menu_more.c	\
				./src/menu/inventory_menu.c	\
				./src/menu/inventory_menu_more.c	\
				./src/menu/htp_menu.c	\
				./src/button/button.c	\
				./src/button/button_more.c	\
				./src/button/button_event.c

PROJECT_OBJ	=	$(PROJECT_SRC:.c=.o)

NAME_LIB =	teklibc.a

NAME =	my_rpg

CPPFLAGS += -I./include

CFLAGS += -Wall -Wextra

CSFML_ARGS = -lcsfml-graphics -lcsfml-system -lcsfml-window -lcsfml-audio

ifeq ($(MATH), 1)
	GCC_ARGS +=	-lm
	CFLAGS += -lm -Wno-unused
endif

ifeq ($(DEBUG), 1)
	GCC_ARGS += -g3
	CFLAGS += -g3 -Wno-unused
endif

ifeq ($(DEBUG), 2)
	GCC_ARGS += -g3
	CFLAGS += -g3 -Werror
endif

all:	$(NAME_LIB)	$(NAME)
ifeq ($(DEBUG), 0)
	@printf "\033[0;32mWARNING : RELEASE MAKE\033[0m\n"
endif
ifeq ($(DEBUG), 1)
	@printf "\033[0;33mWARNING : PERMISSIVE DEBUG MAKE\033[0m\n"
endif
ifeq ($(DEBUG), 2)
	@printf "\a\033[0;31mWARNING : DEBUG MAKE\033[0m\n"
endif

$(NAME_LIB): 	$(OBJ_LIB)
	$(MAKE) -C ./lib
	@printf "\033[0;32m$(NAME_LIB) compilation success\033[0m\n"

$(NAME): $(NAME_LIB) $(PROJECT_OBJ)
	$(CC) -o $(NAME) $(PROJECT_OBJ) $(GCC_ARGS) ./lib/$(NAME_LIB) $(CSFML_ARGS)
	@printf "\033[0;32m$(NAME) compilation success\033[0m\n"

clean:
	$(RM) $(PROJECT_OBJ)
	$(MAKE) -C ./lib clean
	$(MAKE) -C ./tests clean
	$(RM) -f vgcore.*

fclean:	clean
	$(RM) -f $(NAME)
	$(MAKE) -C ./lib fclean
	$(MAKE) -C ./tests fclean
	@printf "\033[0;32m$(NAME) fully cleaned\033[0m\n"

tests_run:
	$(MAKE) -C ./tests tests_run

re: fclean all

.PHONY: all clean fclean re
