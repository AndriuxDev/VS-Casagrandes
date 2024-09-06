local allowCountdown = false
-- local playedVideo2 = false;
local a = 0
local modchart = false
local x = {}
local y = {}
local speed = 1

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;

        playMusic('jennydial', 0, true);
		soundFadeIn(nil, 2);
		setProperty('inCutscene', true);

		setProperty('camGame.zoom', 0.9);
		runTimer('startZoom', 0.75);
		runTimer('startDialogue', 2.75);
		return Function_Stop;
	end
	return Function_Continue;
end


function onBeatHit()
	if curBeat == 120 then --124
		makeLuaSprite('whiteTransition', nil, 0, 0);
		makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		setGraphicSize('whiteTransition',1280,720);
		updateHitbox('whiteTransition');
		setObjectCamera('whiteTransition','camHud');
		setProperty('health', 1);
		runTimer('whiteZoom', 0.1);
		playSound('Lights_Turn_On', 0.7);
	end
end

function onUpdate(elapsed)
	if modchart then
		a = a + 1/60 * speed
		for i = 0,7 do
			setPropertyFromGroup('strumLineNotes', i, 'y', y[i] + 20 * math.cos(i/1.5 + a))
		end
	end
end

function onGameOver()
	modchart = false
    return Function_Continue;
end

function onSongStart()
	for i = 0,7 do
		local xA = getPropertyFromGroup('strumLineNotes', i, 'x')
		local yB = getPropertyFromGroup('strumLineNotes', i, 'y')
		x[i] = xA
		y[i] = yB
	end
    for i = 0,7 do
    	noteTweenY(i .. 'ypos', i, y[i] + 20 * math.cos(i/1.5 + a), 1, 'circInOut')
  	end
	speed = 240 / getPropertyFromClass('ClientPrefs', 'framerate')
end

function onTweenCompleted(tag)
	if tag == '7ypos' then
		modchart = true
	end
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then
		startDialogue('dialogue1')
	end
	if tag == 'startZoom' then
		doTweenZoom('camGameZoomTwn', 'camGame', getProperty('defaultCamZoom'), 2, 'quadInOut');
	end
	if tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
	-- if tag == 'joaquin0' then
    --     startVideo('joaquin0');
    -- end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

-- function onEndSong()
-- 	if not playedVideo2 and isStoryMode and not seenCutscene then -- Block the second countdown and play video cutscene
--         runTimer('joaquin0', 0.5);
-- 		playedVideo2 = true;
-- 		return Function_Stop;
-- 	end
-- 	return Function_Continue;
-- end