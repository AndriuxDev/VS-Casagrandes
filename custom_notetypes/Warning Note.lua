function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Blammed Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Warning Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notesets\\BLAMNOTE_assets'); --Change texture			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
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
	if noteType == 'Warning Note' and dadName == 'joaquin' and boyfriendName == 'playandy' then
        playSound('shooters', 0.7);
		playSound('shield', 0.7);
        characterPlayAnim('boyfriend', 'dodge', true);
        setProperty('boyfriend.specialAnim', true);
		characterPlayAnim('dad', 'dodge', true);
        setProperty('dad.specialAnim', true);
		makeLuaSprite('gunhit', 'notesets/gunhit', 0, 0);
		addLuaSprite('gunhit', true);
		setGraphicSize('gunhit',1280,720);
		updateHitbox('gunhit');
		setObjectCamera('gunhit','camHud');
		runTimer('gunZoom', 0.1);
    end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Warning Note' then
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'oof');
		setProperty('health', -2);
	end
end

function onTweenCompleted(tag)
	if tag == 'gunhitTwn' then
		removeLuaSprite('gunhit');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'gunZoom' then
		doTweenAlpha('gunhitTwn', 'gunhit', 0, 2, 'sineOut');
	end
end