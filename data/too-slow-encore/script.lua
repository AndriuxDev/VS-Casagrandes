function onCreate()
	addCharacterToList('sonexe', 'dad');
    addCharacterToList('lucy', 'dad');
end

function onBeatHit()
    if curBeat == 96 then
        makeLuaSprite('black', nil, 0, 0);
		makeGraphic('black', screenWidth * 2, screenHeight * 2, '000000')
		addLuaSprite('black', false);
		setGraphicSize('black',1280,720);
		updateHitbox('black');
		setObjectCamera('black','camHud');
	elseif curBeat == 104 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
        removeLuaSprite('black');
		runTimer('whiteZoom', 0.1);
    elseif curBeat == 226 then
        makeLuaSprite('black', nil, 0, 0);
		makeGraphic('black', screenWidth * 2, screenHeight * 2, '000000')
		addLuaSprite('black', false);
		setGraphicSize('black',1280,720);
		updateHitbox('black');
		setObjectCamera('black','camHud');
		setProperty('defaultCamZoom', 1.5);
    elseif curBeat == 232 then
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
        removeLuaSprite('black');
		runTimer('whiteZoom', 0.1);
		setProperty('camHUD.visible', false);
    elseif curBeat == 264 then
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
        setProperty('defaultCamZoom', 1);
		setProperty('camHUD.visible', true);
    end
end

function onTweenCompleted(tag)
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
end