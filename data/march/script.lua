local allowCountdown = false
local allowCountdown2 = false

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;

        playMusic('spacedial', 0, true);
		soundFadeIn(nil, 2);
		setProperty('inCutscene', true);

		setProperty('camGame.zoom', 0.9);
		runTimer('startZoom', 0.75);
		runTimer('startDialogue', 2.75);
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown2 and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('endDialogue', 0.8);
		allowCountdown2 = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then
		startDialogue('dialogue1');
	end
	if tag == 'startZoom' then
		doTweenZoom('camGameZoomTwn', 'camGame', getProperty('defaultCamZoom'), 2, 'quadInOut');
	end
	if tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
	if tag == 'endDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue2', 'evildial');
	end
end
	
-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end