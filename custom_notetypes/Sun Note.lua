function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Blammed Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sun Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notesets\\SUNNOTE_assets'); --Change texture			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Sun Note' then
        health = getProperty('health')
        setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1);
        math.randomseed(curBeat * 4)
        soundName = string.format('fire_hurt%i', getRandomInt(1, 3))
        playSound(soundName, 1, 'firehit')
        characterPlayAnim('boyfriend', 'hurt', true);
        setProperty('boyfriend.specialAnim', true);
		setProperty('health', health - 0.5);
		makeLuaSprite('sunhit', 'notesets/sunhit', 0, 0);
		addLuaSprite('sunhit', true);
		setGraphicSize('sunhit',1280,720);
		updateHitbox('sunhit');
		setObjectCamera('sunhit','camHud');
		runTimer('sunZoom', 0.1);
    end
end

function onTweenCompleted(tag)
	if tag == 'sunhitTwn' then
		removeLuaSprite('sunhit');
	end
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'sunZoom' then
		doTweenAlpha('sunhitTwn', 'sunhit', 0, 2, 'sineOut');
	end
end