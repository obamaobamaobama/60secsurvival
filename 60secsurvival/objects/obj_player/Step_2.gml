camh = camera_get_view_height(view_camera[0]);
camw = camera_get_view_width(view_camera[0]);

camx += ((x - (camw/2) - camx) * 0.08)
camy += ((y - (camh/2) - camy) * 0.08)

camera_set_view_pos(view_camera[0], camx, camy);