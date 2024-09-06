function onCreate()
	makeLuaSprite('flashblack', '', 0, 0);
	makeGraphic('flashblack',1280,720,'000000')
	addLuaSprite('flashblack', true);
	setLuaSpriteScrollFactor('flashblack',0,0)
	setProperty('flashblack.scale.x',2)
	setProperty('flashblack.scale.y',2)
	setProperty('flashblack.alpha',0)
end	

function onEvent(n,v1)
	if n == 'Flash Camera Black' then
		setProperty('flashblack.alpha', 1)
		doTweenAlpha('flashblackoff','flashblack',0,v1,'linear')
	end
end