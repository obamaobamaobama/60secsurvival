if shrink = 1 
{
    surface_resize(application_surface, rw, rh);
    rw -= (rw/10);
    rh -= (rh/10);
    if rw < 30 {shrink = 0; alarm[0] = 1;}
}