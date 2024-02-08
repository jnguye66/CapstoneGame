global.lives -= 1;
global.coins -= 10;

instance_destroy();

if(global.lives == 0){
	with(other) instance_destroy();
}