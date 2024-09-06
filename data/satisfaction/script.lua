function onCreatePost()
    setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
    setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
    setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
    setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
    setPropertyFromGroup('playerStrums', 4, 'x', defaultOpponentStrumX4)

    setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 40)
    setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 40)
    setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 40)
    setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX2 + 160)
    setPropertyFromGroup('opponentStrums', 4, 'x', defaultPlayerStrumX3 + 40)	
end

function onBeatHit()
    if curBeat == 544 then
        makeLuaSprite('blackTransition', nil, 0, 0);
	    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
	    addLuaSprite('blackTransition', false);
    elseif curBeat == 560 then
        removeLuaSprite('blackTransition', false);
        makeLuaSprite('dif', 'difum', 0, 0);
        setObjectCamera('dif','camHud');
        setGraphicSize('dif',1280,720);
        updateHitbox('dif');
        addLuaSprite('dif', false);
    elseif curBeat == 624 then
        addLuaSprite('blackTransition', false);
    end
end

function opponentNoteHit()
    if curStep >= 256 then
        if mustHitSection == false then
            health = getProperty('health')
            if getProperty('health') > 0.21 then
                setProperty('health', health- 0.02);
            end
        end
    end
end