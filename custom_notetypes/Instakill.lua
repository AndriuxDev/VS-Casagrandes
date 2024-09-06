function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Instakill' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notesets/instakill'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Instakill' then
		playSound('Instakill', 1)
		characterPlayAnim('boyfriend', 'dodge', true);
		characterPlayAnim('pico', 'down', true);
	end
end

function noteMiss(id, i, noteType, isSustainNote)
	if noteType == 'Instakill' then
		playSound('Instakill', 1)
		setProperty('health', -500);
	characterPlayAnim('boyfriend', 'hurt', true);
	characterPlayAnim('pico', 'down', true);
	end
end
