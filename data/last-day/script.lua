function onCreate()
    makeLuaSprite('blackTransition', nil, 0, 0);
    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
    updateHitbox('blackTransition');
    setGraphicSize('blackTransition',1280,720);
    setObjectCamera('blackTransition','camHud');
    setProperty("blackTransition.alpha", 0);
    addLuaSprite('blackTransition', false);
end

function onBeatHit()
    if curBeat == 196 then
        runTimer('blackZoom', 0.1);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'blackZoom' then
		doTweenAlpha('blackTransitionTwn', 'blackTransition', 1, 5, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'blackTransitionTwn' then
        setProperty("blackTransition.alpha", 1);
    end
end