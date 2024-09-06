function onCreate()

    makeAnimatedLuaSprite('mick', 'CGstages/Mickey', -320, 20);
    addAnimationByPrefix('mick', 'bounce', 'Mickey Mouse idle', 24, false);
    addAnimationByPrefix('mick', 'hey', 'Mickey Mouse right', 24, false);
    scaleObject('mick', 0.7, 0.7);
    setScrollFactor('mick', 0.9, 0.9)

    makeLuaSprite('1919city', 'CGstages/1919city', -800,-500);
    setScrollFactor('1919city', 0.9, 0.9);
    scaleObject('1919city', 1.6, 1.6);

    makeLuaSprite('tree', 'CGstages/1919tree', -800,-500);
    setScrollFactor('tree', 0.9, 0.9);
    scaleObject('tree', 1.6, 1.6);

    makeLuaSprite('bench', 'CGstages/1919bench', -800,-500);
    setScrollFactor('bench', 0.9, 0.9);
    scaleObject('bench', 1.6, 1.6);

    makeLuaSprite('reel', 'CGstages/reel', -0, -0);
    scaleObject('reel', 1, 1);
    setObjectCamera('reel','camHud');

    makeLuaSprite('pantalla','CGstages/shadowbg', 0, 0);
    setGraphicSize('pantalla',1280,720);
    updateHitbox('pantalla');
    setObjectCamera('pantalla','camHud');    

    addLuaSprite('1919city', false);
    addLuaSprite('tree', false);
    addLuaSprite('mick', false);
    addLuaSprite('bench', false);
    addLuaSprite('reel', false);
    addLuaSprite('pantalla', true);
end

function onBeatHit()
	-- triggered 4 times per section
    objectPlayAnimation('mick', 'bounce', false);
end

function onUpdate()
    if keyPressed('space') then
        objectPlayAnimation('mick', 'hey', false);
    end
end 
