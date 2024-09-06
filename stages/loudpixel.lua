function onCreate()

    makeLuaSprite('skyM', 'CGstages/skyM', -800,-500);
	setScrollFactor('skyM', 0.9, 0.9);
	scaleObject('skyM', 2.2, 2.2);

    makeLuaSprite('groundM', 'CGstages/groundM', -800,-500);
	setScrollFactor('groundM', 0.9, 0.9);
	scaleObject('groundM', 2.2, 2.2);

    --MARIO AND LUIGI IN THE STAGE?!?!?!--
    makeAnimatedLuaSprite('mario', 'CGstages/MarioAssets', -200, 250);
	addAnimationByPrefix('mario', 'bounce','Mario Idle', 24, false);
    addAnimationByPrefix('mario', 'hey','Mario Peace Sign', 24, true);
	scaleObject('mario', 0.7, 0.7);
	setScrollFactor('mario', 0.9, 0.9)

    makeAnimatedLuaSprite('luigi', 'CGstages/LuigiAssets', 1200, 200);
	addAnimationByPrefix('luigi', 'bounce','Luigi Idle', 24, false);
    addAnimationByPrefix('luigi', 'hey','Luigi Up', 24, true);
    setProperty('luigi.flipX', true)
	scaleObject('luigi', 0.7, 0.7);
	setScrollFactor('luigi', 0.9, 0.9)

    -------------------------------------

    makeLuaSprite('cloudM', 'CGstages/cloudM', -800,-500);
	setScrollFactor('cloudM', 0.9, 0.9);
	scaleObject('cloudM', 2.2, 2.2);

    addLuaSprite('skyM', false);
    addLuaSprite('groundM', false);
    addLuaSprite('mario', false);
    addLuaSprite('luigi', false);
    addLuaSprite('cloudM', false);

 --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
    objectPlayAnimation('mario', 'bounce', true);
    objectPlayAnimation('luigi', 'bounce', true);
end

function onUpdate()
    if keyPressed('space') then
        objectPlayAnimation('mario', 'hey', false);
        objectPlayAnimation('luigi', 'hey', false);
    end
end 