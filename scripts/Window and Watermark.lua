function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Funkin' with the Casagrandes V4.0"); --Window name

    makeLuaText('watermark', "Funkin\' with the Casagrandes V4.0", 500, 10, 700); --Watermark name
	setTextSize('watermark', 10);
	setTextAlignment('watermark', 'left');
	setObjectCamera('watermark', 'other');
	addLuaText('watermark');

end
