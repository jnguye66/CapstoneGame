function mouseOverTower(xx, yy, width, height){
	xx = (xx - width/2);
	yy = (yy - height/2);

	if(mouse_x > xx - 16 && mouse_x < x + width){
		if(mouse_y > yy - 16 && mouse_y < y + height){
			return true;
		}
		else{
			return false;
		}
	}
	else{
		return false;
}
}