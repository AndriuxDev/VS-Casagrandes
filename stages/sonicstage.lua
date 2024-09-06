function onCreate()
	makeLuaSprite('theSky','SONICstage\\ISLAND SKY',-200,-200)
	addLuaSprite('theSky',false) 
	setLuaSpriteScrollFactor('theSky', 0.2, 0.2);
		
	makeLuaSprite('theGround','SONICstage\\FLOOR1',-200,-100)
	addLuaSprite('theGround',false) 
	setLuaSpriteScrollFactor('theGround', 1.0, 1.0);

    if not lowQuality then
		makeAnimatedLuaSprite('theCorpse','SONICstage\\TailsSpikeAnimated',-200,200)
		addAnimationByPrefix('theCorpse','fire','Tails Spike Animated instance',24,true)
		addLuaSprite('theCorpse',false)
		objectPlayAnimation('theCorpse','Tails Spike Animated instance',true)

		makeLuaSprite('theEgg','SONICstage\\EGGMAN',-300,-150)
		addLuaSprite('theEgg',false) 
		setLuaSpriteScrollFactor('theEgg', 1.0, 1.0);

		makeLuaSprite('theKnuckle','SONICstage\\KNUCKLE',200,-100)
		addLuaSprite('theKnuckle',true) 
		setLuaSpriteScrollFactor('theKnuckle', 1.0, 1.0);

		makeLuaSprite('theTails','SONICstage\\TAIL',-323,-150)
		addLuaSprite('theTails',false) 
		setLuaSpriteScrollFactor('theTails', 1.0, 1.0);
	end

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end