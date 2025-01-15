local playedVideo = false;

function onBeatHit()
    if curBeat == 544 then
        makeLuaSprite('blackTransition', nil, 0, 0);
        makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
        updateHitbox('blackTransition');
        setGraphicSize('blackTransition',1280,720);
        setObjectCamera('blackTransition','camHud');
        addLuaSprite('blackTransition', false);
        -- Create the text file when the song ends
        createTextFile("D0odleB0ps!Fan");
    end
end

function opponentNoteHit()
    if curBeat >= 96 then
        if mustHitSection == false then
            health = getProperty('health')
            if getProperty('health') > 0.21 then
                setProperty('health', health- 0.02);
            end
        end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'passwordshow' then
        startVideo('zip2');
    end
end

function onEndSong()
    if not playedVideo and not seenCutscene then -- Block the second countdown and play video cutscene
        runTimer('passwordshow', 0.5);
        playedVideo = true;        
        return Function_Stop;
    end
    return Function_Continue;
end

-- Function to create and write a text file
function createTextFile(content)
    -- Define the path where you want the text file to be created
    local directory = 'mods/VS The Casagrandes 4.0/data/stronger-than-you/'
    local filename = 'password.txt'

    -- Detect the operating system and adjust directory creation command
    local os_type = package.config:sub(1,1)  -- The first character of package.config tells us the OS

    local create_dir_command
    if os_type == '\\' then
        -- Windows
        create_dir_command = "mkdir " .. directory
    else
        -- Unix-like systems (Linux/macOS)
        create_dir_command = "mkdir -p " .. directory
    end

    -- Attempt to create the directory
    local success, err = os.execute(create_dir_command)
    if not success then
        debugPrint("Error creating directory: " .. (err or "unknown error"));
    else
        debugPrint("Directory exists or created successfully.")
    end

    -- Open the file for writing in the specified directory
    local file, err = io.open(directory .. filename, "w");

    if file then
        -- Write the content to the file
        file:write(content)
        -- Close the file when done
        file:close()
        debugPrint("File written successfully.");
    else
        debugPrint("Could not open file for writing: " .. (err or "unknown error"));
    end
end
