function onCreate()
	-- background shit, optimized for OS Engine
    makeLuaSprite('stage', 'CGstages/stageendLQ', -1000,-200);
    setScrollFactor('stage', 0.9, 0.9);
    scaleObject('stage', 1.1, 1.1);

    addLuaSprite('stage',false);
    
    close(true);
end