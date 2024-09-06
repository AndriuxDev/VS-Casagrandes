local hasTriggered = false  -- Add this variable to track whether the event has been triggered

function onCreate()
    -- background setup, optimized for OS Engine
    makeLuaSprite('bakery', 'CGstages/breadstage', -800, -500);
    setScrollFactor('bakery', 0.9, 0.9);
    scaleObject('bakery', 1.6, 1.6);

    addLuaSprite('bakery', false);
end

function onUpdate()
    if numX == numMax and not hasTriggered then  -- Check if the event has already been triggered
        hasTriggered = true;  -- Set the trigger to true to prevent repeated execution
        makeLuaSprite('something', 'CGstages/something', 0, 0);
        setScrollFactor('something', 0.9, 0.9);
        setGraphicSize('something', 1280, 720);
        setObjectCamera('something', 'camHud');
        updateHitbox('something');
        addLuaSprite('something', false);
        
        runTimer('whiteZoom', 0.1);    
        playSound('thunder', 1);
    end
end

function onStepHit()
    numMin = 1
    numMax = 6

    if curStep % 8 == 0 then
        numX = math.random(numMin, numMax);
        --debugPrint(numX);
        
        if numX ~= numMax then
            hasTriggered = false;  -- Reset the trigger if numX is not 8
        end
    end
end

function onTweenCompleted(tag)
    if tag == 'whiteTransitionTwn' then
        removeLuaSprite('something');
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'whiteZoom' then
        doTweenAlpha('whiteTransitionTwn', 'something', 0, 2, 'sineOut');
        characterPlayAnim('boyfriend', 'hurt', true);
        setProperty('boyfriend.specialAnim', true);
    end
end
