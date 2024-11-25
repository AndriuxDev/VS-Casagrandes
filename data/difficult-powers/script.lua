playVideo = true;
playVideo2 = true;

function onStartCountdown()
	if isStoryMode and not seenCutscene then
		if playVideo then
			startVideo('testCutscene'); --Plays the John cutscene
			playVideo = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end

function onEndSong()
	if isStoryMode and not seenCutscene then
		if playVideo2 then
			startVideo('testCutscene'); --Plays the Puzzles cutscene
			playVideo2 = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end