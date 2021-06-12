

fade = 1;
fade1 = 1;
fadeIn = false;
fadeInTimer = 0;



// Font
mapString = " !'()/0123456789:;<=>?abcdefghijklmnopqrstuvwxyz[\]{|}ABCDE"
bitmapFont = font_add_sprite_ext(spr_font,mapString, false, 0)

draw_set_font(bitmapFont);





randomize();
quote = choose
(
"left click to attack",
"ants can't swim",
"tom fulp rules",
"i love taio cruz"
);