function onCreate()
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

function onUpdate(elapsed)
    toggleGrayscale()
end