function onCreate()
	makeLuaSprite('flashwhite', '', 0, 0);
	makeGraphic('flashwhite',1280,720,'FFFFFF')
	  addLuaSprite('flashwhite', true);
	  setLuaSpriteScrollFactor('flashwhite',0,0)
	  setProperty('flashwhite.scale.x',2)
	  setProperty('flashwhite.scale.y',2)
	  setProperty('flashwhite.alpha',0)
end	

function onEvent(n,v1)
	if n == 'Flash Camera White' then
		setProperty('flashwhite.alpha', 1)
		doTweenAlpha('flashwhiteoff','flashwhite',0,v1,'linear')
	end
end