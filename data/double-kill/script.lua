function opponentNoteHit()
	if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.21 then
            setProperty('health', health- 0.02);
        end
    end
end

function onBeatHit ()
    if curBeat == 4 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 388 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);

        makeLuaSprite('darken', "difum", 0, 0);
        addLuaSprite('darken', true);
        setGraphicSize('darken',1280,720);
        updateHitbox('darken');
        setObjectCamera('darken','other');
    elseif curBeat == 452 then --oswald 1
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 524 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
        removeLuaSprite("darken", false)
    elseif curBeat == 784 then --speed up, steven + spinel
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 920 then --oswald 2
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);

        addLuaSprite('darken', true);
    elseif curBeat == 1064 then
        makeLuaSprite('black', nil, 0, 0);
		makeGraphic('black', screenWidth * 2, screenHeight * 2, '000000')
		addLuaSprite('black', false);
		setGraphicSize('black',1280,720);
		updateHitbox('black');
		setObjectCamera('black','camHud');
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