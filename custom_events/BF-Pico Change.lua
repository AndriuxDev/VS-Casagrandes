-- Event notes hooks
function onEvent(name, value1)
	if name == 'BF-Pico Change' then
        if value1 == 'bf' then
            triggerEvent('Change Character', 'bf', 'bf')
            makeLuaSprite('whiteTransition', nil, 0, 0);
            makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
            addLuaSprite('whiteTransition', true);
            setGraphicSize('whiteTransition',1280,720);
            updateHitbox('whiteTransition');
            setObjectCamera('whiteTransition','camHud');
            runTimer('whiteZoom', 0.1);
        elseif value1 == 'pico' then
            triggerEvent('Change Character', 'bf', 'playpico')
            makeLuaSprite('whiteTransition', nil, 0, 0);
            makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
            addLuaSprite('whiteTransition', true);
            setGraphicSize('whiteTransition',1280,720);
            updateHitbox('whiteTransition');
            setObjectCamera('whiteTransition','camHud');
            runTimer('whiteZoom', 0.1);
        end
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