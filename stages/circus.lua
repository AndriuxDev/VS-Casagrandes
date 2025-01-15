--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()
	if lowQuality then
		makeLuaSprite('obj0', 'xtraStages/OLDdigStage', -1226, -1100)
		setObjectOrder('obj0', 0)
		scaleObject('obj0', 2, 2)
		addLuaSprite('obj0', true)
	else
		makeLuaSprite('obj1', 'xtraStages/circwall', -1265, -1303)
		setObjectOrder('obj1', 0)
		scaleObject('obj1', 2, 2)
		addLuaSprite('obj1', true)
		
		makeLuaSprite('obj2', 'xtraStages/circfloor', -1415, 757)
		setObjectOrder('obj2', 1)
		scaleObject('obj2', 2, 2)
		addLuaSprite('obj2', true)
		
		makeLuaSprite('obj3', 'xtraStages/stands', -1385, -873)
		setObjectOrder('obj3', 1)
		scaleObject('obj3', 2, 2)
		addLuaSprite('obj3', true)
		
		makeLuaSprite('obj4', 'xtraStages/blox', 1584, -1696)
		setObjectOrder('obj4', 3)
		scaleObject('obj4', 1.5, 1.5)
		addLuaSprite('obj4', true)
		
		makeLuaSprite('obj5', 'xtraStages/ballz', -1139, -671)
		setObjectOrder('obj5', 3)
		scaleObject('obj5', 2.5, 2.5)
		addLuaSprite('obj5', true)
		
		makeLuaSprite('obj7', 'xtraStages/door', 1204, 53)
		setObjectOrder('obj7', 3)
		scaleObject('obj7', 1.5, 1.5)
		addLuaSprite('obj7', true)
	end
	
end