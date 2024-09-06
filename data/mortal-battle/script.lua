local allowCountdown = false
local allowCountdown2 = false

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'louddial');
    elseif tag == 'endDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue2', 'changdial');
	elseif tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function opponentNoteHit()
	if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.21 then
            setProperty('health', health- 0.02);
        end
    end
end

function onBeatHit ()
    if curBeat == 64 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 96 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 132 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 164 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 196 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 232 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 296 then
        makeLuaSprite('black', nil, 0, 0);
		makeGraphic('black', screenWidth * 2, screenHeight * 2, '000000')
		addLuaSprite('black', false);
		setGraphicSize('black',1280,720);
		updateHitbox('black');
		setObjectCamera('black','camHud');
	elseif curBeat == 308 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
        removeLuaSprite('black');
		runTimer('whiteZoom', 0.1);
    elseif curBeat == 356 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 388 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 420 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 456 then --124
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', true);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    end
end

function onTweenCompleted(tag)
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
	end
end