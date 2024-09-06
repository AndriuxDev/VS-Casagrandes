function onCreate()
	-- background shit
	makeLuaSprite('ground', 'CGstages/ground', -1000,-300);
	setScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 2.5, 2.5);

	makeLuaSprite('tv', 'CGstages/tv', -1000,-300);
	setScrollFactor('tv', 0.9, 0.9);
	scaleObject('tv', 2.5, 2.5);

	makeLuaSprite('table', 'CGstages/table', -1000,-300);
	setScrollFactor('table', 0.9, 0.9);
	scaleObject('table', 2.5, 2.5);

	makeLuaSprite('couch', 'CGstages/couch', -1000,-300);
	setScrollFactor('couch', 0.9, 0.9);
	scaleObject('couch', 2.5, 2.5);

   	makeAnimatedLuaSprite('serlalo', 'CGstages/SergioLalo_assets', 1050, 400);
   	addAnimationByPrefix('serlalo', 'bounce','PETS IDLE', 24, true);
	setScrollFactor('serlalo', 1.1, 1.1);
	scaleObject('serlalo', 0.7, 0.7);

    function onBeatHit()
        objectPlayAnimation('serlalo', 'bounce', true);
    end
	
	addLuaSprite('ground', false);
	addLuaSprite('tv', false);
	addLuaSprite('table', false);
	addLuaSprite('couch', false);
	addLuaSprite('serlalo', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end