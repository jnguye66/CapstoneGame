global.lives -= 3;
global.coins -= 50;

instance_destroy();

if(global.lives == 0){
	with(other) instance_destroy();
}