/// @description Gun follo
x = oPlayer.x;
y = oPlayer.y+7;

image_angle = point_direction(x,y,mouse_x, mouse_y);

fire_delay -= 1;
recoil = max(0,recoil-1);
if (mouse_check_button(mb_left)) and (fire_delay < 0 )	{
	fire_delay = 20;
	recoil = 3;
	with (instance_create_layer(x,y,"Bullets",oBullet)) {
		speed = 15;
		direction = other.image_angle + random_range(-2,2);
		image_angle = direction;
		audio_play_sound(aShot,1,0);
	}
}
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if(image_angle > 90) and (image_angle < 270) {
	image_yscale = -1;	
} else { 
	image_yscale = 1;
}