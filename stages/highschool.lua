finishedGameover = false;
startedPlaying = false;

function onCreate()
    makeLuaSprite('highSchool', 'XJstage/HighSchool', -600,650);
    makeLuaSprite('ground', 'XJstage/barrera', -600, 750);

   	addLuaSprite('highSchool', false); 
	addLuaSprite('ground', false);

    function onUpdate(elapsed)
		if inGameOver and not startedPlaying and not finishedGameover then
			setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.2);
		end
		if not finishedGameover and getProperty('boyfriend.animation.curAnim.name') == 'deathLoop' and not startedPlaying then
			math.randomseed(curBeat * 4)
			soundName = string.format('jennyLines/jennyLine-%i', getRandomInt(1, 19))
			playSound(soundName, 1, 'voiceJenny')
			startedPlaying = true
		end
	end 

end

function onBeatHit()
	objectPlayAnimation('gang', 'bounce', true);
end