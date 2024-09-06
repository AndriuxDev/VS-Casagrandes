function onCreate()
	-- background shit
	makeLuaSprite('city', 'wbStage/city', -200, -200);
	setScrollFactor('city', 0.9, 0.9);
	scaleObject('city', 0.8, 0.8);
		
	makeLuaSprite('window', 'wbStage/windows', -200, -200);
	setScrollFactor('window', 0.9, 0.9);
	scaleObject('window', 0.8, 0.8);

	makeLuaSprite('studio', 'wbStage/studio', -200, -200);
	setScrollFactor('studio', 0.9, 0.9);
	scaleObject('studio', 0.8, 0.8);

	makeLuaSprite('tv', 'wbStage/tv', -200, -200);
	setScrollFactor('tv', 0.9, 0.9);
	scaleObject('tv', 0.8, 0.8);
		
	makeLuaSprite('table', 'wbStage/table', -200, -200);
	setScrollFactor('table', 0.9, 0.9);
	scaleObject('table', 0.8, 0.8);

	makeLuaSprite('floor', 'wbStage/floor', -300, -200);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 0.8, 0.8);

	addLuaSprite('city', false);
	addLuaSprite('window', false);
	addLuaSprite('studio', false);
	addLuaSprite('tv', false);
	addLuaSprite('floor', false);
	addLuaSprite('table', false);

	print('finished loading stage successfully')
end