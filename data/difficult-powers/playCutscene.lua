playVideo = true;
playVideo2 = true;
playDialogue = true;

function onCreate()
	makeLuaSprite("difR", "difumRed", 0,0);
    setGraphicSize('difR', 1280, 720);
    setObjectCamera('difR', 'other');
    updateHitbox('difR');
	setProperty("difR.alpha", 0);
    addLuaSprite('difR', false);
end

function onStartCountdown()
	if isStoryMode and not seenCutscene then
		if playVideo then --Video cutscene plays first
			startVideo('v4C3'); --Plays the Puzzles cutscene
			playVideo = false;
			return Function_Stop; --Prevents the song from starting naturally
		elseif playDialogue then --Once the video ends it calls onStartCountdown again. Play dialogue this time
			startDialogue('dialogue', 'w6talk'); --"breakfast" is the dialogue music file from "music/" folder
			playDialogue = false;
			return Function_Stop; --Prevents the song from starting naturally
		end
	end
	return Function_Continue; --Played video and dialogue, now the song can start normally
end

function onBeatHit()
	if curBeat >= 352 and curBeat <= 528 then	
		if curBeat%4==0 then
			--debugPrint("Beat in!")
			doTweenAlpha('difRTwn', 'difR', 1, 0.8, 'sineOut');
		elseif curBeat%2==0 then
			--debugPrint("Beat out!")
			doTweenAlpha('difRTwn', 'difR', 0, 0.8, 'sineOut');
		end
	end	
end

function onEndSong()
	if isStoryMode and not seenCutscene then
		if playVideo2 then
			startVideo('allstar'); --Plays the All-Stars cutscene
			playVideo2 = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end