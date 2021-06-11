if instance_exists(obj_attack)
{
	pdir = obj_attack.image_angle;
	xxang = lengthdir_x(5-obj_attack.image_index,pdir);
	yyang = lengthdir_y(5-obj_attack.image_index,pdir);
	draw_sprite_ext(sprite_index,image_index,x+xxang,y+yyang,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else
{
	draw_self();
}



//
// A: heart
// B: house
// C: music
// D: rock
// E: log
// Gaps of 8
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//var rocksNeeded = floor( round(_obj_round_manager.houseRequiresXrocks) / 5 ) * 5;
var rocksNeeded = _obj_round_manager.houseRequiresXrocks;
var playerAmount = _obj_round_manager.houseAmountOfRocks;
draw_text(houseX+2, houseY+24, "D" + string_replace_all(string_format(playerAmount, 2, 0), " ", "0") + "/" + string(rocksNeeded) + "D");

var playerAmount = _obj_round_manager.houseAmountOfWood;
//var woodNeeded = floor( round(_obj_round_manager.houseRequiresXwood) / 5 ) * 5;
var woodNeeded = _obj_round_manager.houseRequiresXwood;
draw_text(houseX+2, houseY+32, "E" + string_replace_all(string_format(playerAmount, 2, 0), " ", "0") + "/" + string(woodNeeded) + "E");