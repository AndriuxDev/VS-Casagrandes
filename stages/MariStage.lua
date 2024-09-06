function onCreate()
	-- background shit
	makeLuaSprite('sky', nil, -300, -200);
	makeGraphic('sky', screenWidth * 2, screenHeight * 2, 'cdfeff')
	updateHitbox('sky')

	makeLuaSprite('mariback', 'CGstages/mariback', -700, -200);
	setScrollFactor('mariback', 0.9, 0.9);
	
	makeLuaSprite('marifront', 'CGstages/marifront', -650, 600);
	setScrollFactor('marifront', 0.9, 0.9);
	scaleObject('marifront', 1.1, 1.1);

	addLuaSprite('sky', false);
	addLuaSprite('mariback', false);
	addLuaSprite('marifront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end