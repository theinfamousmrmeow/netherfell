image_angle=0;
image_blend=c_white;
depth=-(y+z);
scr_zphysics();
if (z<=0)
{
    bounces-=1;
    if bounces>0{
        z=1;
        bounce_speed/=2;
        speed*=(2/3)
        zspeed=bounce_speed
		spawnParticle(x,y,global.p_dust,1);
    }
    else {instance_destroy();}
}

if (z<=0){instance_destroy();}
