playerCreate();


// Font
mapString = " !'()/0123456789:;<=>?abcdefghijklmnopqrstuvwxyz[\]{|}ABCDE"
bitmapFont = font_add_sprite_ext(spr_font,mapString, false, 0)

draw_set_font(bitmapFont);


// House position
houseX = obj_house.x;
houseY = obj_house.y;

hurtTimer = 0;
hurtTimerMAX = 20;


attackTimer = 0;
attackTimerMAX = 30;

image_speed = 0;


if (_obj_game_manager.nightsSurvived == 0)
{
	instance_create_depth(8,472,-1,obj_leviRamirez);
}