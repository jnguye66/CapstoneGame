// Alarm for what happens when each wave ends, aka when all the enemies are dead or destroyed

// If all enemy instances are destroyed
if(!instance_exists(oEnemyParent)){
	spawn_cnt_oEnemy1 = 0; // Reset spawn count
	spawn_cnt_oEnemy2 = 0;
	spawn_cnt_oEnemy3 = 0;
	
	time = 2;
	timer_oEnemy2 = time;
	timer_oEnemy3 = time * 1.5;
	
	// Increase the amount of enemy spawn caps
	spawn_amt_oEnemy1++;
	
	// Increase the amount of enemy 2 spawns every other stage
	if(global.level % 2 = 0){
		spawn_amt_oEnemy2++;
	}
	
	// Increase the amount of enemy 3 spawns every third stage
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
	
	alarm[0] = -1;
	alarm[1] = -1;
}