function onEvent(name, value1, value2)
    if name == 'Lyrics' then
        setTextString('lyric', value1)
        setTextColor('lyric', value2)
        setObjectCamera('lyric', "other")
    end
end

function onCreate()
    makeLuaText('lyric', '', screenWidth, 0, 545)
    addLuaText('lyric')
    setTextSize('lyric', 40)
end