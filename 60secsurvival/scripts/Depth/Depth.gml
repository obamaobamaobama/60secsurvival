

function scr_setDepth()
{
	// Just to keep track of the depth of everything
	if (object_index == obj_house) { setDepth(10); }
	if (object_index == obj_player) { setDepth(20); }
}

function setDepth(_depth)
{
	depth = _depth
}