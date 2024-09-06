local playedVideo = false;

function onCreate()
    makeLuaSprite('blackTransition', nil, 0, 0);
    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
    updateHitbox('blackTransition');
    setGraphicSize('blackTransition',1280,720);
    setObjectCamera('blackTransition','camHud');
    addLuaSprite('blackTransition', false);

    initLuaShader('Grayscale')
    makeLuaSprite("grapshad")
	makeGraphic("grapshad", screenWidth, screenHeight)
	setSpriteShader("grapshad", 'Grayscale')
end

function toggleGrayscale() 
    addHaxeLibrary("ShaderFilter", "openfl.filters")
	runHaxeCode([[
		var game = PlayState.instance;
		game.camGame.setFilters([new ShaderFilter(game.getLuaObject("grapshad").shader)]);
	]])
end

function onUpdate()
    --OG Mickey was using a lot of space, will use a change icon event instead in V4.
    
    if curBeat == 64 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        removeLuaSprite('blackTransition');
        runTimer('whiteZoom', 0.1);
        toggleGrayscale()
    elseif curBeat == 128 or curBeat == 200 or curBeat == 280 or curBeat == 344 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 408 then -- Final part begins
        makeLuaSprite('blackTransition', nil, 0, 0);
	    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
	    addLuaSprite('blackTransition', false);

        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
    elseif curBeat == 472 then
        makeLuaSprite('whiteTransition', nil, 0, 0);
        makeGraphic('whiteTransition', screenWidth * 2, screenHeight * 2, 'FFFFFF')
        addLuaSprite('whiteTransition', false);
        setGraphicSize('whiteTransition',1280,720);
        updateHitbox('whiteTransition');
        setObjectCamera('whiteTransition','camHud');
        runTimer('whiteZoom', 0.1);
        removeLuaSprite('blackTransition');
    elseif curBeat == 608 then
        makeLuaSprite('blackTransition', nil, 0, 0);
	    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
	    addLuaSprite('blackTransition', false);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
end

function onTweenCompleted(tag)
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
    elseif tag == 'zipper1' then
        startVideo('zip1');
    end
end

function opponentNoteHit()
    if curStep >= 256 then
        if mustHitSection == false then
            health = getProperty('health')
            if getProperty('health') > 0.21 then
                setProperty('health', health- 0.02);
            end
        end
    end
end

function onEndSong()
	if not playedVideo and isStoryMode and not seenCutscene then -- Block the second countdown and play video cutscene
        runTimer('zipper1', 0.5);
		playedVideo = true;
		return Function_Stop;
	end
	return Function_Continue;
end

