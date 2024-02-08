if(instance_exists(obj_to_shoot)){
	var bullet = instance_create_depth(x,y,-9,oBullet3);
	bullet.speed = 15;
	bullet.direction = point_direction(x,y,obj_to_shoot.x,obj_to_shoot.y);
	alarm[0] = firing_spd;
}
else{
	shooting = false;
}