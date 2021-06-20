

window_set_size(room_width*4,room_height*4);

// Font
mapString = " !'()/0123456789:;<=>?abcdefghijklmnopqrstuvwxyz[\]{|}ABCDE"
bitmapFont = font_add_sprite_ext(spr_font,mapString, false, 0)

draw_set_font(bitmapFont);



ngLoggedIn = false;


medal1 = false;
medal2 = false;
medal3 = false;