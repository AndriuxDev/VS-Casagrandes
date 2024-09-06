function onCreate()
	addCharacterToList('dsiddeandy1', 'dad');
	addCharacterToList('oswald-end', 'dad');
	addCharacterToList('oswald-gun', 'dad');
	addCharacterToList('dsiddeandy2', 'dad');

	makeLuaSprite('blackTransition', nil, 0, 0);
    makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
    updateHitbox('blackTransition');
    setGraphicSize('blackTransition',1280,720);
    setObjectCamera('blackTransition','camHud');
    addLuaSprite('blackTransition', false);
end

function onBeatHit()
	if curBeat == 61 then 
		makeLuaText('start1','Alright, alright...', 1280, 0, 550);
		setTextSize('start1', 40);
		setObjectCamera('start1', 'camHud');
		addLuaText('start1', true);
	end
	if curBeat == 66 then
		makeLuaText('start2','Let\'s get this over with.', 1280, 0, 550);
		setTextColor('start2', 'FF0000');
		setTextSize('start2', 40);
		setObjectCamera('start2', 'camHud');
		addLuaText('start2', true);
		removeLuaText('start1');
	end
	if curBeat == 72 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
		removeLuaText('start2');
		removeLuaSprite('blackTransition');
	end
	if curBeat == 140 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 206 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 270 then
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
		makeLuaText('p1','In the end, we all DIE.', 1280, 0, 550);
		setTextSize('p1', 40);
		setObjectCamera('p1', 'camHud');
		addLuaText('p1', true);
	end
	if curBeat == 278 then
		makeLuaText('p2','Why should I even try?', 1280, 0, 550);
		setTextSize('p2', 40);
		setObjectCamera('p2', 'camHud');
		addLuaText('p2', true);
		removeLuaText('p1')
	end
	if curBeat == 286 then
		makeLuaText('p3','Gun in hand, my life will end...', 1280, 0, 550);
		setTextSize('p3', 40);
		setObjectCamera('p3', 'camHud');
		addLuaText('p3', true);
		removeLuaText('p2')
	end
	if curBeat == 293 then --261
		makeLuaText('p4','MY SUFFERING SHALL BE KNOWN, FRIEND!', 1280, 0, 550);
		setTextSize('p4', 40);
		setObjectCamera('p4', 'camHud');
		setTextColor('p4', 'FF0000');
		addLuaText('p4', true);
		removeLuaText('p3')
	end
	if curBeat == 302 then
		removeLuaText('p4')
	end
	if curBeat == 332 then
		makeLuaText('scream','RAAAAH!', 1280, 0, 550);
		setTextSize('scream', 60);
		setObjectCamera('scream', 'camHud');
		setTextColor('scream', 'FF0000');
		addLuaText('scream', true);
	end
	if curBeat == 334 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
		triggerEvent('Change Character', 'dad', 'dsideandy2');
		removeLuaText('scream')
	end
	if curBeat == 460 then
		makeLuaText('die','DIE!', 1280, 0, 520);
		setTextSize('die', 80);
		setObjectCamera('die', 'camHud');
		setTextColor('die', 'FF0000');
		addLuaText('die', true);
	end
	if curBeat == 462 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
		removeLuaText('die')
	end
	if curBeat == 526 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 590 then --402
		makeLuaSprite('blackTransition', nil, 0, 0);
    	makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
    	updateHitbox('blackTransition');
    	setGraphicSize('blackTransition',1280,720);
   		setObjectCamera('blackTransition','camHud');
   		addLuaSprite('blackTransition', false);

		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 652 then
		makeLuaText('graah','GRRRAAAAHHH!!!', 1280, 0, 520);
		setTextSize('graah', 80);
		setObjectCamera('graah', 'camHud');
		setTextColor('graah', '5B0002');
		addLuaText('graah', true);
	end
	if curBeat == 654 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
		removeLuaText('graah');
		removeLuaSprite('blackTransition');
	end
	if curBeat == 718 then --112
		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
	end
	if curBeat == 782 then --402
		makeLuaSprite('blackTransition', nil, 0, 0);
    	makeGraphic('blackTransition', screenWidth * 4, screenHeight * 4, '000000')
    	updateHitbox('blackTransition');
    	setGraphicSize('blackTransition',1280,720);
   		setObjectCamera('blackTransition','camHud');
   		addLuaSprite('blackTransition', false);

		makeLuaSprite('whiteTransition', nil, -1100, -300);
		makeGraphic('whiteTransition', screenWidth * 4, screenHeight * 4, 'FFFFFF')
		addLuaSprite('whiteTransition', true);
		runTimer('whiteZoom', 0.1);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'whiteZoom' then
		doTweenAlpha('whiteTransitionTwn', 'whiteTransition', 0, 2, 'sineOut');
	end
end

function onTweenCompleted(tag)
	if tag == 'whiteTransitionTwn' then
		removeLuaSprite('whiteTransition');
	end
end

function opponentNoteHit()
	if curBeat >= 334 then
		if mustHitSection == false then
			health = getProperty('health')
			if getProperty('health') > 0.21 then
				setProperty('health', health - 0.04);
			end
		end
	end
end
	
