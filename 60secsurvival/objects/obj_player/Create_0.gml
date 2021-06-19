playerCreate();

camx = camera_get_view_x(view_camera[0]);
camy = camera_get_view_y(view_camera[0]);

// Font
mapString = " !'()/0123456789:;<=>?abcdefghijklmnopqrstuvwxyz[\]{|}ABCDE"
bitmapFont = font_add_sprite_ext(spr_font,mapString, false, 0)

draw_set_font(bitmapFont);


// House position
houseX = obj_house.x;
houseY = obj_house.y;

visible = 1;

hurtTimer = 0;
hurtTimerMAX = 20;


attackTimer = 0;
attackTimerMAX = 30;

image_speed = 0;


if (_obj_game_manager.nightsSurvived == 0)
{
	instance_create_depth(8,472,-1,obj_leviRamirez);
}

display_set_gui_size(view_wport[0], view_hport[0]);



if (!audio_is_playing(bgm_The_Unknown))
{
	audio_play_sound(bgm_The_Unknown, 1, true);
}
	
if (!audio_is_playing(bgm_The_Unknown2))
{
	audio_play_sound(bgm_The_Unknown2, 1, true);
}