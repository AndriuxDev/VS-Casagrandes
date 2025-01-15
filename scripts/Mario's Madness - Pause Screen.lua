--lazy af recreation by kornelbut. credit would be neat

--read HOW TO ADD CREDITS AND DESCRIPTION.txt to know how to add them

local paused = false
local canPause = false
local option = 1
local maxOption = 4

pauseItems = {'Resume', 'Restart', 'Botplay', 'Exit', 'blackBG', 'redBG', 'fade', 'line'}

function onCreate()
    canPause = songName ~= "Satisfaction"
end

function onUpdatePost(elapsed) --Checks if you're in Story Mode or Freeplay mode.
    if isStoryMode then
        if canPause and keyboardJustPressed("P") then --Story Mode
            playSound('pause/pause')
            openCustomSubstate('MMpauseMenu', true)
        end
    else
        if canPause and keyJustPressed('pause') then --Freeplay Mode
            playSound('pause/pause')
            openCustomSubstate('MMpauseMenu', true)
        end
    end
end

function RGBtoHex(R,G,B) -- behold, the most mid RGB to Hex converter to exist LMAO

	Decimal1 = math.floor(R/16)
	Decimal2 = ((R/16)%1)*16

	Decimal3 = math.floor(G/16)
	Decimal4 = ((G/16)%1)*16

	Decimal5 = math.floor(B/16)
	Decimal6 = ((B/16)%1)*16

	LetterValues = 'ABCDEF'

-- testing "string.sub" shit lol
	if Decimal1 == 10 then
		Decimal1 = string.sub(LetterValues, 1,1)
	elseif Decimal1 == 11 then
		Decimal1 = string.sub(LetterValues, 2,2)
	elseif Decimal1 == 12 then
		Decimal1 = string.sub(LetterValues, 3,3)
	elseif Decimal1 == 13 then
		Decimal1 = string.sub(LetterValues, 4,4)
	elseif Decimal1 == 14 then
		Decimal1 = string.sub(LetterValues, 5,5)
	elseif Decimal1 == 15 then
		Decimal1 = string.sub(LetterValues, 6,6)
	end
	if Decimal2 == 10 then
		Decimal2 = string.sub(LetterValues, 1,1)
	elseif Decimal2 == 11 then
		Decimal2 = string.sub(LetterValues, 2,2)
	elseif Decimal2 == 12 then
		Decimal2 = string.sub(LetterValues, 3,3)
	elseif Decimal2 == 13 then
		Decimal2 = string.sub(LetterValues, 4,4)
	elseif Decimal2 == 14 then
		Decimal2 = string.sub(LetterValues, 5,5)
	elseif Decimal2 == 15 then
		Decimal2 = string.sub(LetterValues, 6,6)
	end
	if Decimal3 == 10 then
		Decimal3 = string.sub(LetterValues, 1,1)
	elseif Decimal3 == 11 then
		Decimal3 = string.sub(LetterValues, 2,2)
	elseif Decimal3 == 12 then
		Decimal3 = string.sub(LetterValues, 3,3)
	elseif Decimal3 == 13 then
		Decimal3 = string.sub(LetterValues, 4,4)
	elseif Decimal3 == 14 then
		Decimal3 = string.sub(LetterValues, 5,5)
	elseif Decimal3 == 15 then
		Decimal3 = string.sub(LetterValues, 6,6)
	end
	if Decimal4 == 10 then
		Decimal4 = string.sub(LetterValues, 1,1)
	elseif Decimal4 == 11 then
		Decimal4 = string.sub(LetterValues, 2,2)
	elseif Decimal4 == 12 then
		Decimal4 = string.sub(LetterValues, 3,3)
	elseif Decimal4 == 13 then
		Decimal4 = string.sub(LetterValues, 4,4)
	elseif Decimal4 == 14 then
		Decimal4 = string.sub(LetterValues, 5,5)
	elseif Decimal4 == 15 then
		Decimal4 = string.sub(LetterValues, 6,6)
	end
	if Decimal5 == 10 then
		Decimal5 = string.sub(LetterValues, 1,1)
	elseif Decimal5 == 11 then
		Decimal5 = string.sub(LetterValues, 2,2)
	elseif Decimal5 == 12 then
		Decimal5 = string.sub(LetterValues, 3,3)
	elseif Decimal5 == 13 then
		Decimal5 = string.sub(LetterValues, 4,4)
	elseif Decimal5 == 14 then
		Decimal5 = string.sub(LetterValues, 5,5)
	elseif Decimal5 == 15 then
		Decimal5 = string.sub(LetterValues, 6,6)
	end
	if Decimal6 == 10 then
		Decimal6 = string.sub(LetterValues, 1,1)
	elseif Decimal6 == 11 then
		Decimal6 = string.sub(LetterValues, 2,2)
	elseif Decimal6 == 12 then
		Decimal6 = string.sub(LetterValues, 3,3)
	elseif Decimal6 == 13 then
		Decimal6 = string.sub(LetterValues, 4,4)
	elseif Decimal6 == 14 then
		Decimal6 = string.sub(LetterValues, 5,5)
	elseif Decimal6 == 15 then
		Decimal6 = string.sub(LetterValues, 6,6)
	end
		Hex1 = Decimal1
		Hex2 = Decimal2
		Hex3 = Decimal3
		Hex4 = Decimal4
		Hex5 = Decimal5
		Hex6 = Decimal6
		local HexCode = table.concat{Hex1,Hex2,Hex3,Hex4,Hex5,Hex6}
	return HexCode
end


function onCustomSubstateCreatePost(tag)
	if tag == 'MMpauseMenu' then

        local R = getProperty('dad.healthColorArray[0]')
        local G = getProperty('dad.healthColorArray[1]')
        local B = getProperty('dad.healthColorArray[2]')

        makeLuaSprite('dim', '', 0, 0)
        makeGraphic('dim', 1280, 720, '000000')
        setObjectCamera('dim', 'other')
        setProperty('dim.alpha', 0.7)
        addLuaSprite('dim', true)

        makeLuaSprite('blackBG', '', -250, 0)
        makeGraphic('blackBG', 550, 720, '000000')
        setObjectCamera('blackBG', 'other')
        addLuaSprite('blackBG', true)

        makeLuaSprite('redBG', '', -250, 0)
        makeGraphic('redBG', 530, 720, 'FF0000')
        setObjectCamera('redBG', 'other')
        addLuaSprite('redBG', true)

        makeLuaSprite('fade', 'pauseScreen/fadeCuzIdkShaders', -250, 0)
        setObjectCamera('fade', 'other')
        addLuaSprite('fade', true)

        makeLuaSprite('line', '', 260, 0)
        makeGraphic('line', 5, 720, '000000')
        setObjectCamera('line', 'other')
        addLuaSprite('line', true)

        for i = 1, 4 do
            makeAnimatedLuaSprite(pauseItems[i], 'pauseScreen/Mario_pause_'..pauseItems[i], -180, 90+(i-1)*150)
            addAnimationByPrefix(pauseItems[i], 'off', pauseItems[i]..' white', 24, true)
            addAnimationByPrefix(pauseItems[i], 'on', pauseItems[i]..' basic', 24, true)
            setObjectCamera(pauseItems[i], 'other')
            scaleObject(pauseItems[i], 0.5, 0.5)
            addLuaSprite(pauseItems[i], true)
            playAnim(pauseItems[i], 'off')
        end

        for i = 1, #pauseItems do
            doTweenX(pauseItems[i], pauseItems[i], getProperty(pauseItems[i]..'.x') + 200, 0.3, 'backOut')
        end

        if getProperty('practiceMode') then
            practiceTog = "ON"
        else
            practiceTog = "OFF"
        end

        if isStoryMode then
            playingIn = 'Story Mode'
        -- == DETECT CHARTING MODE ==
        --elseif getProperty('chartingMode') then
           --playingIn = 'Debug Mode'
        else
            playingIn = 'Freeplay Mode'
        end

        makeLuaText('credits', "Playing in: "..playingIn..'\n\n\n'.."Current Difficulty: "..difficultyName.."\nSong Completion: "..math.floor((getSongPosition()/songLength)*100).."%".."\nPractice Mode: "..practiceTog, 650, 560, 30)
        setObjectCamera('credits', 'other')
        setTextSize('credits', 20)
        setTextFont('credits', 'nexa.ttf')
        setTextBorder('credits', 0)
        setTextAlignment('credits', 'left')
        setProperty('credits.alpha', 0)
        addLuaText('credits')

        makeLuaSprite('under1', '', getProperty('credits.x'), getProperty('credits.y') + 28)
        makeGraphic('under1', 650, 3, 'FFFFFF')
        setObjectCamera('under1', 'other')
        setProperty('under1.alpha', 0)
        addLuaSprite('under1', true)

        makeLuaText('name', songName, 650, 560, 60)
        setObjectCamera('name', 'other')
        setTextSize('name', 26)
        setTextFont('name', 'nexa.ttf')
        setTextBorder('name', 1, "FFFFFF")
        setTextColor("name", RGBtoHex(R,G,B))
        setTextAlignment('name', 'left')
        setProperty('name.alpha', 0)
        addLuaText('name')

        makeLuaText('desc', 'Current Stats: \n\n'.."Score: "..getScore().."\nHits: "..getHits().."\nMisses: "..getMisses().."\n\nHealth: "..(getHealth()*50).."%\nAccuracy: "..math.floor(rating * 100) .."%" ..' | ' ..ratingName.."\n\n# of Retries: "..getPropertyFromClass('PlayState', 'deathCounter'), 650, 560, 340)
        setObjectCamera('desc', 'other')
        setTextSize('desc', 20)
        setTextFont('desc', 'nexa.ttf')
        setTextBorder('desc', 0)
        setTextAlignment('desc', 'left')
        setProperty('desc.alpha', 0)
        addLuaText('desc')

        makeLuaSprite('under2', '', getProperty('desc.x'), getProperty('desc.y') + 34)
        makeGraphic('under2', 650, 3, 'FFFFFF')
        setObjectCamera('under2', 'other')
        setProperty('under2.alpha', 0)
        addLuaSprite('under2', true)

        makeLuaSprite("weegee", "pauseScreen/luigi", 970, 630);
        setObjectCamera("weegee", 'other');
        setProperty("weegee.visible", getProperty('cpuControlled'));
        scaleObject("weegee", 0.3, 0.3);
        addLuaSprite("weegee", true);

        makeLuaText('bot', 'SUPER GUIDE', 1200, 1060, 670)
        setObjectCamera('bot', 'other')
        setTextSize('bot', 30)
        setTextBorder('botplayText', 0)
        setTextAlignment('bot', 'left')
        setProperty('bot.visible', getProperty('cpuControlled'))
        addLuaText('bot')

        playAnim('Resume', 'on')
    end
end

function onCustomSubstateUpdate(tag)
	if tag == 'MMpauseMenu' then
        if keyJustPressed('accept') then
            optionPicked()
        end
        optionSelection()
	end
end

function optionSelection()
    if keyJustPressed('down') and option ~= maxOption then
        option = option + 1
        playSound('pause/menu', 1)
    elseif keyJustPressed('down') and option == maxOption then --Stuck at EXIT
        option = maxOption
        playSound('pause/stuck', 1)
    elseif keyJustPressed('up') and option ~= 1 then
        option = option - 1
        playSound('pause/menu', 1)
    elseif keyJustPressed('up') and option == 1 then --Stuck at RESUME
        option = 1
        playSound('pause/stuck', 1)
    end
    if keyJustPressed('down') or keyJustPressed('up') then
        if option == 1 then
            playAnim('Resume', 'on')
            playAnim('Restart', 'off')
            playAnim('Exit', 'off')
        elseif option == 2 then
            playAnim('Restart', 'on')
            playAnim('Botplay', 'off')
            playAnim('Resume', 'off')
        elseif option == 3 then
            playAnim('Botplay', 'on')
            playAnim('Exit', 'off')
            playAnim('Restart', 'off')
        elseif option == 4 then
            playAnim('Exit', 'on')
            playAnim('Resume', 'off')
            playAnim('Botplay', 'off')
        end
    end
end

function optionPicked()
    if option == 1 then
        playSound('pause/continue')
        removeButtons()
    elseif option == 2 then
        playSound('pause/restart')
        stopSound(pauseMusic)
        restartSong()
    elseif option == 3 then
        setProperty('cpuControlled', not getProperty('cpuControlled'))
        setProperty('botplayTxt.visible', not getProperty('botplayTxt.visible'))
        setProperty('bot.visible', getProperty('cpuControlled'))
        setProperty("weegee.visible", getProperty('cpuControlled'))
        playSound('pause/refill')
    elseif option == 4 then
        exitSong()
    end
end

function removeButtons()
    for i = 1, #pauseItems do
        removeLuaSprite(pauseItems[i], true)
    end
    removeLuaSprite('dim', true)
    removeLuaText('credits', true)
    removeLuaText('name', true)
    removeLuaText('desc', true)
    removeLuaSprite('under1', true)
    removeLuaSprite('under2', true)
    removeLuaText('bot', true)
    closeCustomSubstate('MMpauseMenu')
end

function onTweenCompleted(tag)
    if tag == 'Resume' then
        doTweenAlpha('credits', 'credits', 1, 0.2, 'linear')
        doTweenAlpha('under1', 'under1', 1, 0.2, 'linear')
        doTweenAlpha('name', 'name', 1, 0.2, 'linear')
    elseif tag == 'credits' then
        doTweenAlpha('desc', 'desc', 1, 0.2, 'linear')
        doTweenAlpha('under2', 'under2', 1, 0.2, 'linear')
    end
end

function onPause()
    return Function_Stop
end

function onGameOver()
    closeCustomSubstate('MMpauseMenu')
end

function onGameOverStart()
    canPause = false
	closeCustomSubstate('MMpauseMenu')
end