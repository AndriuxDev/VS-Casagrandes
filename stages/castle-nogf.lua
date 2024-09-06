function onCreate()
    if not LowQuality then
        makeLuaSprite('bg', 'CGstages/bg', -1000, -500);
        setScrollFactor('bg', 0.9, 0.9);
        scaleObject('bg', 1.5, 1.5);

        makeLuaSprite('winds', 'CGstages/windows', -1000, -500);
        setScrollFactor('winds', 0.9, 0.9);
        scaleObject('winds', 1.5, 1.5);

        makeLuaSprite('stair2', 'CGstages/stairs2', -1000, -500);
        setScrollFactor('stair2', 0.9, 0.9);
        scaleObject('stair2', 1.5, 1.5);

        makeLuaSprite('curtain', 'CGstages/curtains', -1000, -500);
        setScrollFactor('curtain', 0.9, 0.9);
        scaleObject('curtain', 1.5, 1.5);
        
        addLuaSprite('bg',false);
        addLuaSprite('winds',false);
        addLuaSprite('stair2',false);
        addLuaSprite('curtain',false);
    else
        makeLuaSprite('castleLQ', 'CGstages/castleLQ', -1000, -500);
        setScrollFactor('castleLQ', 0.9, 0.9);
        scaleObject('castleLQ', 1.5, 1.5);
        addLuaSprite('castleLQ', false);
    end
        
    makeLuaSprite('darken', "difum", 0, 0);
    setGraphicSize('darken',1280,720);
    updateHitbox('darken');
    setObjectCamera('darken','camHud');
    addLuaSprite('darken', false);

    close(true);
end