function onCreate()
	if (boyfriendName == 'ronnie') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'ronnie'); 
	elseif (boyfriendName == 'bf') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); 
	elseif (boyfriendName == 'playpico') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'playpico'); 
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pico'); 
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pico'); 
	elseif (boyfriendName == 'carl') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'carl'); 
	elseif (boyfriendName == 'playandy') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'playandy'); 
	elseif (boyfriendName == 'sonic') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic'); 
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'sonic_loss');
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'sonicOver'); 
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'sonicOverEnd'); 
	-- === OSWALD SECTION START ===
	elseif (boyfriendName == 'oswald-player') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'oswald-player2'); 
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'oswald_loss'); 
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'oswaldOver'); 
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'oswaldOverEnd'); 
	elseif (boyfriendName == 'oswald-player2') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'oswald-player2'); 
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'oswald_loss'); 
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'oswaldOver'); 
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'oswaldOverEnd'); 
	elseif (boyfriendName == 'oswald-player2-fear') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'oswald-player2'); 
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'oswald_loss'); 
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'oswaldOver'); 
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'oswaldOverEnd'); 
	-- === OSWALD SECTION END ===
	elseif (boyfriendName == 'mario') then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'mariodead'); 
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'mario_loss'); 
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', '85Over'); 
		setPropertyFromClass('GameOverSubstate', 'endSoundName', '85OverEnd');
	end
end