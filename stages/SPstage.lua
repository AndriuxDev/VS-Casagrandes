--created with Super_Hugo's Stage Editor v1.6.3

function onCreate()

	makeLuaSprite('obj2', 'xtraStages/SPwall', -338, -166)
	setObjectOrder('obj2', 0)
	scaleObject('obj2', 1.1, 1.1)
	addLuaSprite('obj2', true)
	
	makeLuaSprite('obj3', 'xtraStages/SPcoats', -123, 49)
	setObjectOrder('obj3', 1)
	scaleObject('obj3', 1.1, 1.1)
	addLuaSprite('obj3', true)
	
	makeLuaSprite('obj4', 'xtraStages/SPaccs', 252, 64)
	setObjectOrder('obj4', 1)
	scaleObject('obj4', 1.1, 1.1)
	addLuaSprite('obj4', true)
	
	makeLuaSprite('obj8', 'xtraStages/SPfront', -492, 608)
	setObjectOrder('obj8', 12)
	scaleObject('obj8', 1.2, 1.2)
	setScrollFactor('obj8', 0.9, 0.9)
	addLuaSprite('obj8', true)
	
end