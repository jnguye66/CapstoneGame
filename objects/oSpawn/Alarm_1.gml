// Alarm for what happens when each wave ends, aka when all the enemies are dead or destroyed

// If all enemy instances are destroyed
/*if((instance_number(oEnemy1) <= 0) && (instance_number(oEnemy2) <= 0) && (instance_number(oEnemy3) <=0)){
	spawn_cnt = 0; // Reset spawn count
	// Increase the amount of enemy spawn caps
	spawn_amt_oEnemy1++;
	if(global.level % 2 = 0){
		spawn_amt_oEnemy2++;
	}
	if(global.level % 3 = 0){
		spawn_amt_oEnemy3++;
	}
	// Increase level
	global.level++;
	// Increase enemy hp
	global.hp += 10;
	// Increase enemy speed
	global.spd += 0.1;
	// Increases spawn rate
	spawn_rate -= 1;
	alarm[2] = spawn_rate;
}

alarm[1] = room_speed * 5;*/