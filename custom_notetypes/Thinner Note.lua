function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a heal note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Thinner Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notesets/THINNOTE_assets'); --Change texture
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
	if noteType == 'Thinner Note' then
		curHealth = getProperty('health')
		noteTweenAlpha("noteGone5", 4, 0.2, 0.5, "linear");
		noteTweenAlpha("noteGone6", 5, 0.2, 0.5, "linear");
		noteTweenAlpha("noteGone7", 6, 0.2, 0.5, "linear");
		noteTweenAlpha("noteGone8", 7, 0.2, 0.5, "linear");
		soundName = string.format('splash%i', getRandomInt(1, 5))
        playSound(soundName, 1, 'splash')
		setProperty('health', curHealth - 0.25)
	end
end