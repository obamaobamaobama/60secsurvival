if grow = 1 
{
    surface_resize(application_surface, rw, rh);
    rw += (rw/10);
    rh += (rh/10);
    if rw > (240/1.1) {rw = 240; rh = 135; grow = 0; alarm[0] = 1;}
}