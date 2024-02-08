draw_self();
if(mouseOverTower(x,y,sprite_width,sprite_height))
	draw_circle(x,y,range,true);

var enemy = instance_nearest(x,y,oEnemyParent);
if(enemy != noone){
	if(point_distance(x,y,enemy.x,enemy.y) <= range + 16){
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
		obj_to_shoot = enemy;
		if(mouseOverTower(x,y,sprite_width,sprite_height))
			draw_line(x,y,enemy.x,enemy.y);
	}
	else{
		shooting = false;
		obj_to_shoot = noone;
	}
}