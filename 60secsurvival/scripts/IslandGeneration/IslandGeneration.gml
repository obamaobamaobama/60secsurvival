

function GenerateIsland()
{
	// Variables
	var wall_percentage, softness;
	
	wall_percentage = 38;
	softness = 16;
	
	tileSize = 16;
	floor_ = 0;
	wall_ = 1;
	gridw = room_width / tileSize;
	gridh = room_height / tileSize;
	grid = ds_grid_create(gridw, gridh);
	
	// Generate random noise
	for (var i = 0; i < gridw; i++)
	{
		for (var j = 0; j < gridh; j++)
		{
			if (i > 0 && i < (gridw - 1) && j > 0 && j < (gridh - 1))
			{
				if (irandom(100) < wall_percentage)
				{
					grid[# i, j] = wall_;
				}
				else
				{
					grid[# i, j] = floor_;
				}
			}
			else
			{
				grid[# i, j] = wall_;
			}
		}
	}
	
	
	// Soften noise
	repeat(softness)
	{
		for (var i = 1; i < (gridw - 1); i++; )
		{
			for (var j = 1; j < (gridh - 1); j++; )
			{
				// adj = adjacent
				var adj_floor = 0;
				var adj_wall = 0;
				// Checking neighbours
				for (var ii = -1; ii <= 1; ii++;)
				{
					for (var jj = -1; jj <= 1; jj++;)
					{
						if (grid[# i + ii, j + jj] == wall_ && grid[# i, j] == floor_)
						{
							adj_floor++;
						}
						if (grid[# i + ii, j + jj] == floor_ && grid[# i, j] == wall_)
						{
							adj_wall++;
						}
					}
				}
				if (adj_floor >= 5) { grid[# i, j] = wall_; }
				if (adj_wall >= 5) { grid[# i, j] = floor_; }
			}
		}
	}
}


function DrawIsland()
{
	for (var i = 0; i < gridw; i++)
	{
		for (var j = 0; j < gridh; j++)
		{
			//draw_set_color(c_black);
			if (grid[# i, j] == wall_)
			{
				//draw_rectangle(i * tileSize, j * tileSize, (i + 1) * tileSize, (j + 1) * tileSize, 0);
				instance_create_depth((i * tileSize) + 8, (j * tileSize) + 8, -1, obj_wall);
			}
			
			//draw_set_color(c_white);
			if (grid[# i, j] == floor_)
			{
				instance_create_depth((i * tileSize) + 8, (j * tileSize) + 8, -1, obj_resourceParent);
				instance_create_depth((i * tileSize) + 8, (j * tileSize) + 8, -1, obj_grassblade);
			}
		}
	}
}