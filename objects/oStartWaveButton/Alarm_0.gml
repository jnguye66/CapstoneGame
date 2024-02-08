// Alarm for spawning enemies every wave

// Enemy 1 spawns every wave
if(global.level >= 1){
	if(spawn_cnt_oEnemy1 < spawn_amt_oEnemy1){
		instance_create_depth(x,y,-1,oEnemy1);
		// Enemy 2 spawns every wave after wave 1
		if(global.level >= 2){
			timer_oEnemy2--;
			show_debug_message(timer_oEnemy2);
			if(timer_oEnemy2 < 0){
				if(spawn_cnt_oEnemy2 < spawn_amt_oEnemy2){
					instance_create_depth(x,y,-1,oEnemy2);
					spawn_cnt_oEnemy2++;
				}
			}
		}
		// Enemy 3 spawns every third wave
		if((global.level >= 2) && ((global.level % 3) = 0)){
			timer_oEnemy3--;
			if(timer_oEnemy3 < 0){
				if(spawn_cnt_oEnemy3 < spawn_amt_oEnemy3){
					instance_create_depth(x,y,-1,oEnemy3);
					spawn_cnt_oEnemy3++;
				}
			}
		}
		// Counts spawned enemies
		spawn_cnt_oEnemy1++;
		alarm[0] = spawn_rate;
	}
	else{
		alarm[0] = -1;
		if((alarm[0] == -1) && (!instance_exists(oEnemyParent))){
			alarm[1] = 1;
		}
		alarm[0] = 1;
	}
}