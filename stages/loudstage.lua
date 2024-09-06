function onCreate()

    makeLuaSprite('layout', 'CGstages/layout', -800,-500);
	setScrollFactor('layout', 0.9, 0.9);
	scaleObject('layout', 2.2, 2.2);

    makeLuaSprite('window', 'CGstages/window', -800,-500);
	setScrollFactor('window', 0.9, 0.9);
	scaleObject('window', 2.2, 2.2);

    makeLuaSprite('room', 'CGstages/room', -800,-500);
	setScrollFactor('room', 0.9, 0.9);
	scaleObject('room', 2.2, 2.2);

    makeLuaSprite('stairs', 'CGstages/stairs', -800,-500);
	setScrollFactor('stairs', 0.9, 0.9);
	scaleObject('stairs', 2.2, 2.2);

    addLuaSprite('layout', false);
    addLuaSprite('window', false);
    addLuaSprite('room', false);
    addLuaSprite('stairs', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end