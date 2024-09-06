function onCreate()
	-- background shit
	makeLuaSprite('wall', 'CGstages/wall', -300, -100);
	setScrollFactor('wall', 0.9, 0.9)

	makeLuaSprite('bean', 'CGstages/bean', -300, -100);
	setScrollFactor('bean', 0.9, 0.9)

	makeLuaSprite('pillow', 'CGstages/pillow', -300, -100);
	setScrollFactor('pillow', 0.9, 0.9)

	makeLuaSprite('couch2', 'CGstages/couch2', -300, -100);
	setScrollFactor('couch2', 0.9, 0.9)

	makeAnimatedLuaSprite('bf', 'CGstages/BOYFRIEND', 970, 95);
	addAnimationByPrefix('bf', 'bounce','BF idle dance', 24, true);
	scaleObject('bf', 0.7, 0.7);
	setScrollFactor('bf', 0.9, 0.9)

	makeAnimatedLuaSprite('gf', 'CGstages/GF_ass_sets', -50, 200);
	addAnimationByPrefix('gf', 'bounce','GF Dancing Beat', 24, true);
	setProperty('gf.flipX', true);
	scaleObject('gf', 0.9, 0.9);
	setScrollFactor('gf', 0.9, 0.9)

	function onBeatHit()
        objectPlayAnimation('bf', 'bounce', true);
        objectPlayAnimation('gf', 'bounce', true);
	end

	addLuaSprite('wall', false);
	addLuaSprite('bean', false);
	addLuaSprite('pillow', false);
	addLuaSprite('couch2', false);
	addLuaSprite('bf', false);
	addLuaSprite('gf', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end