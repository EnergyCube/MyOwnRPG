/*
** EPITECH PROJECT, 2021
** pause
** File description:
** RPG Pause Scene
*/

#include <stdlib.h>
#include "rpg.h"
#include "music.h"
#include "font.h"
#include "button.h"

void menu_pause_init_parallax(game_t *game)
{
    game->menu.menu_pause.parallax_sprite = sfSprite_create();
    game->menu.menu_pause.parallax_texture =
        sfTexture_createFromFile("./data/loading_parallax.png", NULL);
    sfTexture_setRepeated(game->menu.menu_pause.parallax_texture, sfTrue);
    sfTexture_setSmooth(game->menu.menu_pause.parallax_texture, sfTrue);
    sfSprite_setTexture(game->menu.menu_pause.parallax_sprite,
        game->menu.menu_pause.parallax_texture, sfFalse);
    sfSprite_setScale(game->menu.menu_pause.parallax_sprite,
        (sfVector2f){ 0.3, 0.3 });
    game->menu.menu_pause.parallax_pos = (sfVector2f) {
        0 - sfView_getCenter(game->camera.view).x,
        0 - sfView_getCenter(game->camera.view).y };
    sfSprite_setPosition(game->menu.menu_pause.parallax_sprite,
        game->menu.menu_pause.parallax_pos);
    sfSprite_setTextureRect(game->menu.menu_pause.parallax_sprite,
        (sfIntRect) { 0, 0, 10000, 10000});
}

void menu_pause_init(game_t *game)
{
    menu_pause_init_parallax(game);
    game->menu.menu_pause.title = sfText_create();
    sfText_setString(game->menu.menu_pause.title, "Pause");
    sfText_setFont(game->menu.menu_pause.title,
        font_get(&game->fonts, ANCIENT_MEDIUM_FONT)->font);
    sfText_setCharacterSize(game->menu.menu_pause.title, 45);
}

void menu_pause_update(game_t *game)
{
    sfIntRect rec =
        sfSprite_getTextureRect(game->menu.menu_pause.parallax_sprite);

    if (rec.height > 40000 || rec.width > 40000) {
        rec.height = 10000;
        rec.width = 10000;
        game->menu.menu_pause.parallax_pos = (sfVector2f) {
            0 - sfView_getSize(game->camera.view).x,
            0 - sfView_getSize(game->camera.view).y
        };
    }
    rec.height += 5.0;
    rec.width += 5.0;
    game->menu.menu_pause.parallax_pos.x -= 1;
    game->menu.menu_pause.parallax_pos.y -= 1;
    sfSprite_setTextureRect(game->menu.menu_pause.parallax_sprite, rec);
    sfSprite_setPosition(game->menu.menu_pause.parallax_sprite,
        game->menu.menu_pause.parallax_pos);
    sfText_setPosition(game->menu.menu_pause.title, (sfVector2f) {
        sfView_getCenter(game->camera.view).x - 50,
        sfView_getCenter(game->camera.view).y - 145
    });
}

void menu_pause_render(game_t *game)
{
    sfRenderWindow_drawSprite(game->window,
        game->menu.menu_pause.parallax_sprite, NULL);
    sfRenderWindow_drawText(game->window,
        game->menu.menu_pause.title, NULL);
}

void menu_pause_destroy(game_t *game)
{
    sfSprite_destroy(game->menu.menu_pause.parallax_sprite);
    sfTexture_destroy(game->menu.menu_pause.parallax_texture);
    sfText_destroy(game->menu.menu_pause.title);
}