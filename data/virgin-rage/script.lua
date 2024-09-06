local allowCountdown = false

function onCreate()
	addCharacterToList('basil', 'boyfriend');
    addCharacterToList('john', 'boyfriend');
    addCharacterToList('playandy-L', 'dad');
    addCharacterToList('bf-guitar', 'dad');
end

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
		startDialogue('dialogue1', 'spacedial');
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

function onTweenCompleted(tag)
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
	end
end

function onBeatHit()
	if curBeat == 224 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 424 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	health = getProperty('health')
	setProperty('health', health + 0.02);
end

function opponentNoteHit()
	if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.21 then
            setProperty('health', health- 0.02);
        end
    end
end
