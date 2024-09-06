function onBeatHit()
    if curBeat == 96 then
        makeLuaSprite('blackTransition', nil, 0, 0);
        makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
        addLuaSprite('blackTransition', false);    
    elseif curBeat == 104 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        removeLuaSprite('blackTransition');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 200 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 232 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 296 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 328 then
        makeLuaSprite('blackTransition', nil, 0, 0);
        makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
        addLuaSprite('blackTransition', false);
    elseif curBeat == 344 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        removeLuaSprite('blackTransition');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 376 then
        makeLuaSprite('blackTransition', nil, 0, 0);
        makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
        addLuaSprite('blackTransition', false);
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

function opponentNoteHit()
	if curBeat >= 104 then
		if mustHitSection == false then
			health = getProperty('health')
			if getProperty('health') > 0.21 then
				setProperty('health', health - 0.02);
			end
		end
	end
end