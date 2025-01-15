playVideo = true;

function onStartCountdown()
	if isStoryMode and not seenCutscene then
		if playVideo then
			startVideo('v4C2'); --Plays the SMG4 cutscene
			playVideo = false;
			return Function_Stop;
		end
	end
	return Function_Continue;
end