local allowCountdown = false
local allowCountdown2 = false

function onCreate()
	addCharacterToList('basil', 'boyfriend');
    addCharacterToList('playandy-L', 'boyfriend');
    addCharacterToList('bf', 'boyfriend');
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
		startDialogue('dialogue', 'oswaldOver');
	elseif tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	elseif tag == 'endDial' then
		startDialogue('dialogue2', 'venture');
    end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onBeatHit()
	if curBeat == 128 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 192 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 256 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 384 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 448 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		runTimer('whiteZoom', 0.1);
	end	
end

function onEndSong()
	if not allowCountdown2 and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('endDial', 0.8);
		allowCountdown2 = true;
		return Function_Stop;
	end
	return Function_Continue;
end
