function onCreate()
	-- background shit
	makeLuaSprite('cinemaback', 'wbStage/cinemaback', -300, -300);
	setScrollFactor('cinemaback', 0.5, 0.5);
	scaleObject('cinemaback', 0.9, 0.9);
		
	makeLuaSprite('cinemafront', 'wbStage/cinemafront', -650, 600);
	setScrollFactor('cinemafront', 0.9, 0.9);
	scaleObject('cinemafront', 1.1, 1.1);

	addLuaSprite('cinemaback', false);
	addLuaSprite('cinemafront', false);

	close(true)
end