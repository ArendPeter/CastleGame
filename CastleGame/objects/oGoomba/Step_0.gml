if(activated){
	dy += .5
	
	if(y < 160 and y + dy > 160){
		with(oCameraControl){
			shakeCamera()
		}
	}
	
	y = min(160, y + dy) 
}