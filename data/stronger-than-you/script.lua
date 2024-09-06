local playedVideo = false;

function onUpdate()
    if curBeat == 544 then
        makeLuaSprite('blackTransition', nil, 0, 0);
	    makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
	    addLuaSprite('blackTransition', false);
    end
end

function opponentNoteHit()
    if curBeat >= 96 then
        if mustHitSection == false then
            health = getProperty('health')
            if getProperty('health') > 0.21 then
                setProperty('health', health- 0.02);
            end
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'passwordshow' then
        startVideo('zip2');
    end
end

function onEndSong()
	if not playedVideo and not seenCutscene then -- Block the second countdown and play video cutscene
        runTimer('passwordshow', 0.5);
		playedVideo = true;
		return Function_Stop;
	end
	return Function_Continue;
end
