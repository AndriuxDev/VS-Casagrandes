function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a heal note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Heal Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notesets/HEALNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: health gained on hit
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
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Heal Note' then
		if getProperty('health') < 1 then
			playSound('healhit', 1);
        	characterPlayAnim('boyfriend', 'hey', true);
        	setProperty('boyfriend.specialAnim', true);
			setProperty('health', 1.5);
		else
			playSound('meow', 1); --MEWO?!
			setProperty('health', getProperty('health')); --no health will be added
			characterPlayAnim('boyfriend', 'hurt', true);
        	setProperty('boyfriend.specialAnim', true);
		end
	end
end