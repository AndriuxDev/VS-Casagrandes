-- Code made by AndriuxDev. Improvements made via ChatGPT!

local paused = false
local canPause = true
local option = 1
local maxOption = 6
local optSpacing = 50
local baseY = 249
local baseY2 = 255
local Path = 'scottPause/'
local pauseMusicPath = Path..'scottMusic'

local MessageTexts = {
    'You\'ve drifted away from the game... until next time.',
    'Even heroes need to rest their weary hearts.',
    'Reality calls... but the game will wait.',
    'When you\'re ready to return, the game will be here, patiently.',
    'The digital world is quiet now... until you return.',
    'Lost in the game\'s rhythm, but now it\'s time to say goodbye.',
    'The screen fades to black, but your adventure isn\'t over.',
    'The game pauses, but your journey continues in dreams.',
    'So, you\'re leaving? Just like that? Don\'t make it a habit.',
    'I see how it is. Can\'t say I didn\'t see this coming.',
    'Taking a break? Or just running away like always?',
    'Leaving already? Some things never change, do they?',
    'Just like Scott, always leaving before the real fight begins.',
    'Guess some people never really grow up. See you around.'
};

pauseItems = {'RESUME GAME', 'RESTART SONG', 'BOTPLAY: ', 'PRACTICE MODE: ', 'EXIT SONG', 'EXIT GAME'}
local inExitConfirmation = false  -- Track if we're in the exit confirmation screen
local exitOption = 1  -- 1 for "YES", 2 for "NO"

function onCreate()
    precacheSound(pauseMusicPath)
    precacheSound(Path..'ScottScoll')
    precacheSound(Path..'ScottPopup')
    precacheSound(Path..'ScottToggle')
    precacheSound(Path..'ScottExit')
end


function onUpdatePost()
    if canPause and keyJustPressed('pause') then
        playSound('pause/pause')
        openCustomSubstate('SPPause', true)
    end
end

function onCustomSubstateCreatePost(tag)
    makeLuaSprite("pauseBox", Path.."pauseBox", 0, 0)
    setObjectCamera('pauseBox', 'other')
    addLuaSprite("pauseBox")
    setObjectOrder('pauseBox', 0)

    runTimer("loopMusic",6.83,0);
    playSound(pauseMusicPath,1,'start')

    makeLuaSprite("bar", Path.."bar", 435, baseY)
    setObjectCamera('bar', 'other')
    addLuaSprite("bar")
    setObjectOrder('bar', 1)

    if tag == 'SPPause' then
        for i = 1, #pauseItems do
            local yPosition = baseY2 + (i - 1) * optSpacing
            makeLuaText('item' .. i, getItemText(i), 394, 443, yPosition)
            setTextColor('item' .. i, '88b1f1')
            setTextFont('item' .. i, '8BP.ttf')
            addLuaText('item' .. i)
            setTextAlignment('item' .. i, 'center')
            setObjectCamera('item' .. i, 'other')
            setObjectOrder('item' .. i, 2)
        end

        updateArrowPosition()

    end
end

function onCustomSubstateUpdate(tag)
    if tag == 'SPPause' then
        if inExitConfirmation then
            handleExitConfirmation()
        else
            handleSPPause()
        end
    end
end

function handleSPPause()
    if keyJustPressed('accept') then
        optionPicked()
    end
    optionSelection()
    updateTextItems()
end

function handleExitConfirmation()
    if keyJustPressed('left') or keyJustPressed('right') then
        exitOption = exitOption == 1 and 2 or 1  -- Toggle between 1 (YES) and 2 (NO)
        updateExitConfirmation()
        playSound(Path..'ScottScoll', 1)
    elseif keyJustPressed('accept') then
        if exitOption == 1 then
            playSound(Path..'ScottExit')
            runTimer("Exit", 3.0)
            updateExitMessage("Exiting game...")
        else
            playSound(Path..'ScottToggle')
            removeExitConfirmation()
        end
    end
end

function optionSelection()
    if keyJustPressed('down') and option < maxOption then
        option = option + 1
        playSound(Path..'ScottScoll', 1)
    elseif keyJustPressed('up') and option > 1 then
        option = option - 1
        playSound(Path..'ScottScoll', 1)
    end

    updateArrowPosition()
end

function updateArrowPosition()
    local yPosition = baseY + (option - 1) * optSpacing
    setProperty('bar.y', yPosition)
end

function updateExitConfirmation()
    if exitOption == 1 then
        setProperty('YHov.alpha', 1)
        setProperty('NHov.alpha', 0)
    else
        setProperty('YHov.alpha', 0)
        setProperty('NHov.alpha', 1)
    end
end

function optionPicked()
    if option == 1 then
        playSound(Path..'ScottToggle')
        cancelTimer("loopMusic")
        stopSound("loop")
        stopSound("start")
        removeButtons()
    elseif option == 2 then
        playSound(Path..'ScottToggle')
        stopSound(pauseMusic)
        restartSong()
    elseif option == 3 then
        setProperty('cpuControlled', not getProperty('cpuControlled'))
        setProperty('botplayTxt.visible', not getProperty('botplayTxt.visible'))
        playSound(Path..'ScottToggle')
    elseif option == 4 then
        setProperty('practiceMode', not getProperty('practiceMode'))
        playSound(Path..'ScottToggle')
    elseif option == 5 then
        exitSong()
    elseif option == 6 then
        initiateExitConfirmation()
    end
end

function initiateExitConfirmation()
    inExitConfirmation = true
    playSound(Path..'ScottPopup')
    
    -- Base Exit Background
    makeLuaSprite("exit", Path.."exit", 0, 227)
    setObjectCamera('exit', 'other')
    addLuaSprite("exit")
    setObjectOrder('exit', 10)

    -- Unselected Options
    makeLuaSprite("Yoff", Path.."Yoff", 258, 408)
    setObjectCamera('Yoff', 'other')
    addLuaSprite("Yoff")
    setObjectOrder('Yoff', 12)

    makeLuaSprite("Noff", Path.."Noff", 818, 408)
    setObjectCamera('Noff', 'other')
    addLuaSprite("Noff")
    setObjectOrder('Noff', 13)

    -- Selected Options
    makeLuaSprite("YHov", Path.."YHov", 258, 408)
    setObjectCamera('YHov', 'other')
    addLuaSprite("YHov")
    setObjectOrder('YHov', 14)  -- Highest layer for the highlighted option

    makeLuaSprite("NHov", Path.."NHov", 818, 408)
    setObjectCamera('NHov', 'other')
    addLuaSprite("NHov")
    setObjectOrder('NHov', 15)  -- Highest layer for the highlighted option

    -- Initially, only show the selected option that's currently active
    setProperty('YHov.alpha', exitOption == 1 and 1 or 0)
    setProperty('NHov.alpha', exitOption == 2 and 1 or 0)

    makeLuaText('exitMsg', "Test", screenWidth, 0, 345)
    setTextFont('exitMsg', '8BP.ttf')
    setTextSize('exitMsg', 15)
    setTextAlignment('exitMsg', 'center')
    setObjectCamera('exitMsg', 'other')
    setObjectOrder('exitMsg', 20)
    addLuaText('exitMsg')
    setTextString('exitMsg', MessageTexts[getRandomInt(1, #MessageTexts)])  

    updateExitConfirmation()
end


function removeExitConfirmation()
    inExitConfirmation = false
    removeLuaSprite("exit", true)
    removeLuaSprite("Yoff", true)
    removeLuaSprite("Noff", true)
    removeLuaSprite("YHov", true)
    removeLuaSprite("NHov", true)
    removeLuaText("exitMsg",true)
end

function updateTextItems()
    for i = 1, #pauseItems do
        setTextString('item' .. i, getItemText(i))
    end
end

function getItemText(index)
    if index == 3 then
        return pauseItems[index] .. (getProperty('cpuControlled') and 'ON' or 'OFF')
    elseif index == 4 then
        return pauseItems[index] .. (getProperty('practiceMode') and 'ON' or 'OFF')
    else
        return pauseItems[index]
    end
end

function removeButtons()
    for i = 1, #pauseItems do
        removeLuaText('item' .. i, true)
    end
    removeLuaSprite("pauseBox", false)
    removeLuaSprite("bar", false)
    closeCustomSubstate('SPPause')
end

function onPause()
    return Function_Stop
end

function onGameOver()
    closeCustomSubstate('SPPause')
end

function onGameOverStart()
    canPause = false
    closeCustomSubstate('SPPause')
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "Exit" then
        os.exit()
    elseif tag == 'loopMusic' then
        playSound(pauseMusicPath,1,'loop');
    end
end

function updateExitMessage(message)
    makeLuaText('exitMsg', message, screenWidth, 0, 345)
    setTextFont('exitMsg', '8BP.ttf')
    setTextSize('exitMsg', 15)
    setTextAlignment('exitMsg', 'center')
    setObjectCamera('exitMsg', 'other')
    setObjectOrder('exitMsg', 20)
    addLuaText('exitMsg')
    cancelTimer("loopMusic")
    stopSound("loop")
    stopSound("start")
end