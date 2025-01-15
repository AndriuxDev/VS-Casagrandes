--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()
	if lowQuality then
		makeLuaSprite('obj0', 'xtraStages/OLDYTStage', -1226, -900)
		setObjectOrder('obj0', 0)
		scaleObject('obj0', 2, 2)
		addLuaSprite('obj0', true)
	else
		makeLuaSprite('obj2', 'xtraStages/city', -1403, -1246)
		setObjectOrder('obj2', 1)
		scaleObject('obj2', 2, 2)
		setScrollFactor('obj2', 0.8, 0.8)
		addLuaSprite('obj2', true)
		
		makeLuaSprite('obj3', 'xtraStages/glassfence', -1166, -951)
		setObjectOrder('obj3', 2)
		scaleObject('obj3', 2, 2)
		addLuaSprite('obj3', true)
		
		makeLuaSprite('obj4', 'xtraStages/ytfloor', -1306, 762)
		setObjectOrder('obj4', 3)
		scaleObject('obj4', 2, 2)
		addLuaSprite('obj4', true)
		
		makeLuaSprite('obj5', 'xtraStages/ytwall', -1299, -938)
		setObjectOrder('obj5', 4)
		scaleObject('obj5', 2, 2)
		addLuaSprite('obj5', true)
		
		makeLuaSprite('obj6', 'xtraStages/ytlogo', -39, -498)
		setObjectOrder('obj6', 3)
		scaleObject('obj6', 2, 2)
		addLuaSprite('obj6', true)
		
		makeLuaSprite('obj7', 'xtraStages/chair', -459, 522)
		setObjectOrder('obj7', 5)
		scaleObject('obj7', 2, 2)
		addLuaSprite('obj7', true)
		
		makeLuaSprite('obj8', 'xtraStages/chair', 1528, 535)
		setObjectOrder('obj8', 5)
		scaleObject('obj8', 2, 2)
		addLuaSprite('obj8', true)
		
		makeLuaSprite('obj9', 'xtraStages/chair', 1861, 602)
		setObjectOrder('obj9', 6)
		scaleObject('obj9', 2, 2)
		addLuaSprite('obj9', true)
	end
end