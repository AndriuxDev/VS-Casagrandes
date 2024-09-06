function onCreate()
	-- background shit
	makeLuaSprite('injback', 'injector/injback', -500, -300);
	setLuaSpriteScrollFactor('injback', 0.9, 0.9);

	makeAnimatedLuaSprite('smokeL', 'injector/smokeLeft', -200, -300);
	addAnimationByPrefix('smokeL','dance','SmokeBlurLeft instance',24,true);
	objectPlayAnimation('smokeL','dance',false);
	scaleObject('smokeL', 1.2, 1.2);

	makeAnimatedLuaSprite('smokeL2', 'injector/smokeLeft', 1200, -200);
	addAnimationByPrefix('smokeL2','dance','SmokeBlurLeft instance',24,true);
	objectPlayAnimation('smokeL2','dance',false);
	setPropertyLuaSprite('smokeL2', 'flipX', true); --mirror sprite horizontally
	scaleObject('smokeL2', 1.2, 1.2);

	makeAnimatedLuaSprite('smokeR2', 'injector/smokeRight', 800, -200);
	addAnimationByPrefix('smokeR2','dance','SmokeRight instance',24,true);
	objectPlayAnimation('smokeR2','dance',false);
	scaleObject('smokeR2', 1.2, 1.2);

	makeAnimatedLuaSprite('smokeR', 'injector/smokeRight', 300, 100);
	addAnimationByPrefix('smokeR','dance','SmokeRight instance',24,true);
	objectPlayAnimation('smokeR','dance',false);
	scaleObject('smokeR', 1.2, 1.2);

	makeLuaSprite('earth', 'injector/earth', -500, -300);
	setLuaSpriteScrollFactor('earth', 0.9, 0.9);

	makeLuaSprite('injfront', 'injector/injfront', -500, -300);
	setLuaSpriteScrollFactor('injfront', 0.9, 0.9);

	addLuaSprite('injback', false);
	addLuaSprite('smokeL', false);
	addLuaSprite('smokeR2', false);
	addLuaSprite('earth', false);
	addLuaSprite('smokeL2', false);
	addLuaSprite('smokeR', false);
	addLuaSprite('injfront', false);

	
	function onBeatHit()
		-- triggered 4 times per section
		objectPlayAnimation('smokeL','idle', false);
		objectPlayAnimation('smokeR','idle', false);
		objectPlayAnimation('smokeL2','idle', false);
		objectPlayAnimation('smokeR2','idle', false);
	end
	
	function onCountdownTick(counter)
		onBeatHit();
	end


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end