

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
"beetles can't swim",
"i love taio cruz",
"south west first night",
"have you tried pressing l?",
"newgrounds rules",
"tom fulp pwns",
"find leviramirez",
"follow plufmot",
"follow stepford",
"follow larrynachos",
"follow slickramen",
"follow plufmot",
"follow stepford",
"follow larrynachos",
"follow slickramen",
"minecraft",
"i see red",
"aaaaaaaahh",
"i see demons",
"hakuna matata",
"peter the ant",
"gangnam style",
"yee",
"yeet",
"yeeeeeeee",
"idk what to write here",
"bababooey",
"epic",
"game over nah jokes",
"hell yeah dude",
"butter sandwhich",
"schweet",
"blam this",
"5 star this"
);

display_set_gui_size(view_wport[0], view_hport[0]);