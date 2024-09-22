function onCreate()
    
    makeLuaSprite('blackTransition', nil, 0, 0);
    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
    updateHitbox('blackTransition');
    setGraphicSize('blackTransition',1280,720);
    setObjectCamera('blackTransition','camHud');
    addLuaSprite('blackTransition', false);

end

function onUpdate()
    --OG Mickey was using a lot of space, will use a change icon event instead in V4.
    if curBeat == 64 then
        setProperty("blackTransition.alpha", 0)
    end

    if curBeat == 248 then
        runTimer('blackZoom', 0.1);
    end

    if curBeat == 260 then
        setProperty("blackTransition.alpha", 0)
    end

    if curBeat == 544 then
        setProperty("blackTransition.alpha", 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'blackZoom' then
		doTweenAlpha('blackTransitionTwn', 'blackTransition', 1, 1, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'blackTransitionTwn' then
        setProperty("blackTransition.alpha", 1);
    end
end