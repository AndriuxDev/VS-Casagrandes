function onCreate()
    
    makeLuaSprite('blackTransition', nil, 0, 0);
    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
    updateHitbox('blackTransition');
    setGraphicSize('blackTransition',1280,720);
    setObjectCamera('blackTransition','camHud');
    addLuaSprite('blackTransition', false);

end

function onUpdate()
    --OG Mickey was using a lot of space, will use a change icon event instead in V4.
    
    if curBeat == 543 then
        makeLuaSprite('blackTransition', nil, 0, 0);
	    makeGraphic('blackTransition', screenWidth * 2, screenHeight * 2, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
	    addLuaSprite('blackTransition', false);
    end
end