function onCreate()
	-- background shit
	makeLuaSprite('cityFOF', 'CGstages/fofcity', -100, -200);
	setScrollFactor('cityFOF', 0.9, 0.9);
    scaleObject('cityFOF', 1.6, 1.6);

	makeLuaSprite('buildFOF', 'CGstages/building', -100, -200);
	setScrollFactor('buildFOF', 0.9, 0.9);
    scaleObject('buildFOF', 1.6, 1.6);
	
	makeLuaSprite('bfDED', 'CGstages/bfded', -100, -200);
	setScrollFactor('bfDED', 0.9, 0.9);
    scaleObject('bfDED', 1.6, 1.6);

	addLuaSprite('cityFOF', false);
    addLuaSprite('buildFOF', false);
	addLuaSprite('bfDED', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end