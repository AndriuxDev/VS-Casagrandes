-- Define target percentages and tolerance
local halfwayPercentage = 50
local almostTherePercentage = 90
local tolerance = 0.01 -- Adjust as needed

-- Flags to track if sounds have been played
local halfwaySoundPlayed = false
local almostThereSoundPlayed = false

function onCreate()
    precacheSound("halfwaythere");
    precacheSound("almostthere");

	--screenWidth - 368
    makeLuaSprite("50perc", "halfwaythere", screenWidth + 300, 150);
    setObjectCamera("50perc", 'hud');
    addLuaSprite("50perc", true);

	makeLuaSprite("90perc", "almostthere", screenWidth + 300, 150);
    setObjectCamera("90perc", 'hud');
    addLuaSprite("90perc", true);
end

function onUpdatePost()
    percTotal = (getSongPosition() / songLength) * 100;
    formatted = string.format('%.2f', percTotal)

    if percTotal >= 0 then
        makeLuaText("perc", formatted .. "%", 0, (screenWidth / 2) + 300, getProperty("healthBar.y") - 5);
        setTextSize("perc", 16);
        setTextColor("perc", "ffffff");
        setTextBorder("perc", 3, "000000");
        setTextAlignment("perc", 'left')
        addLuaText("perc");
    end

    -- Check if percTotal is close to target percentages within tolerance
    if not halfwaySoundPlayed and math.abs(percTotal - halfwayPercentage) < tolerance then 
		runTimer("halfX", 0.01)
        playSound("halfwaythere", 1.1);
		
        halfwaySoundPlayed = true -- Set flag to true after playing sound
    end

    if not almostThereSoundPlayed and math.abs(percTotal - almostTherePercentage) < tolerance then
		runTimer("endX", 0.01)
        playSound("almostthere", 1.1);
        almostThereSoundPlayed = true -- Set flag to true after playing sound
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'halfX' then
		doTweenX("halfwaythereX", "50perc", screenWidth - 368, 1, 'sineOut');
		runTimer("halfXOut", 6);
	elseif tag == 'halfXOut' then
		doTweenX("halfwaythereX", "50perc", screenWidth + 600, 1, 'sineOut');
	end

	if tag == 'endX' then
		doTweenX("almostthereX", "90perc", screenWidth - 368, 1, 'sineOut');
		runTimer("endXOut", 6);
	elseif tag == 'endXOut' then
		doTweenX("almostthereX", "90perc", screenWidth + 600, 1, 'sineOut');
	end
end
