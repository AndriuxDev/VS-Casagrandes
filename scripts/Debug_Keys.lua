dancing = false
danced = false
canback = false

function onUpdatePost(elapsed)
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F1') and not getProperty('startingSong') then
		endSong()
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F3') then
		if not getProperty('practiceMode') then
			setProperty("practiceMode", true)
			debugPrint("Practice Mode: Activated!")
		else
			setProperty("practiceMode", false)
			debugPrint("Practice Mode: Dectivated.")
		end
	-- elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F2') and not getProperty('startingSong') then
	-- 	setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') + 10000) 
	-- 	setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
	-- 	setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
	-- 	debugPrint("Skipped 10 seconds.")
	-- elseif canback and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F3') and not getProperty('startingSong') then
	-- 	setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - 10000) 
	-- 	setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
	-- 	setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
	-- 	dancing = true
	-- 	debugPrint("Backed 10 seconds.")
	-- 	characterDance('gf')
	-- 	characterDance('boyfriend')
	-- 	characterDance('dad')
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F4') then
		if not getProperty('cpuControlled') then
			setProperty('cpuControlled', true)
			debugPrint("Botplay: Activated!")
			setProperty('botplayTxt.visible', true)
		else
			setProperty('cpuControlled', false)
			debugPrint("Botplay: Deactivated.")
			setProperty('botplayTxt.visible', false)
		end
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F5') then
		setProperty('cameraSpeed', getProperty('cameraSpeed') + 0.5)
		debugPrint("Current Camera Speed = ", getProperty('cameraSpeed'))
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F6') then
		setProperty('cameraSpeed', getProperty('cameraSpeed') - 0.5)
		debugPrint("Current Camera Speed = ", getProperty('cameraSpeed'))
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F7') then
		debugPrint("Current Scroll Speed = ", getProperty('songSpeed'))
		setProperty('songSpeed', getProperty('songSpeed') + 0.1)
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F8') then
		debugPrint("Current Scroll Speed = ", getProperty('songSpeed'))
		setProperty('songSpeed', getProperty('songSpeed') - 0.1)
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F9') then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') + 0.1)
		doTweenZoom('c', 'camGame', getProperty('defaultCamZoom') + 0.01, 0.05, 'linear')
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F10') then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.1)
		doTweenZoom('c', 'camGame', getProperty('defaultCamZoom') - 0.01, 0.05, 'linear')
	--Health Debug--
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
		setProperty('health', getProperty('health') - 0.1)
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
		setProperty('health', getProperty('health') + 0.1)
	end
end

function onStepHit()
	if dancing then
		if curStep % 4 == 0 then
			characterDance('gf')
			characterDance('boyfriend')
			characterDance('dad')
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	dancing = false
	canback = true
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	dancing = false
	canback = true
end