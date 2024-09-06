--Created by RamenDominoes
--Credit is appreciated, but not necessary <3

function onCreate()

	--NO TOUCHY THESE!!!
	------------------------------------------------------------------
	local BFLeft = getPropertyFromGroup('playerStrums', '0', 'x')
	local BFDown = getPropertyFromGroup('playerStrums', '1', 'y')
	local BFUp = getPropertyFromGroup('playerStrums', '2', 'y')
	local BFRight = getPropertyFromGroup('playerStrums', '3', 'x')

	local OPLeft = getPropertyFromGroup('opponentStrums', '0', 'x')
	local OPDown = getPropertyFromGroup('opponentStrums', '1', 'y')
	local OPUp = getPropertyFromGroup('opponentStrums', '2', 'y')
	local OPRight = getPropertyFromGroup('opponentStrums', '3', 'x')
	------------------------------------------------------------------

	--touchy this hehe
	local Movement = 20 --Wouldn't recommend going above 40(even that's a lot), but it would be kinda funny

	------------------------------------------------------------------

	function goodNoteHit(id, direction, noteType, isSustainNote)
		if direction == 0 then
			noteTweenX('leftBF', 4, BFLeft - Movement, 0.2, 'ElasticOut')
		elseif direction == 1 then
			noteTweenY('downBF', 5, BFDown + Movement, 0.2, 'ElasticOut')
		elseif direction == 2 then
			noteTweenY('upBF', 6, BFUp - Movement, 0.2, 'ElasticOut')
		elseif direction == 3 then
			noteTweenX('rightBF', 7, BFRight + Movement, 0.2, 'ElasticOut')
		else
			runTimer('ReturnBF', 0.08, 1)
		end
	end

	function opponentNoteHit(id, direction, noteType, isSustainNote)
		if direction == 0 then
			noteTweenX('leftOP', 0, OPLeft - Movement, 0.2, 'ElasticOut')
		elseif direction == 1 then
			noteTweenY('downOP', 1, OPDown + Movement, 0.2, 'ElasticOut')
		elseif direction == 2 then
			noteTweenY('upOP', 2, OPUp - Movement, 0.2, 'ElasticOut')
		elseif direction == 3 then
			noteTweenX('rightOP', 3, OPRight + Movement, 0.2, 'ElasticOut')
		else
			runTimer('ReturnOp', 0.08, 1)
		end
	end

	function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'ReturnBF' then
			noteTweenX('leftBF', 4, BFLeft, 0.05, 'linear')
			noteTweenY('downBF', 5, BFDown, 0.05, 'linear')
			noteTweenY('upBF', 6, BFUp, 0.05, 'linear')
			noteTweenX('rightBF', 7, BFRight, 0.05, 'linear')
		elseif tag == 'ReturnOp' then
			noteTweenX('leftOP', 0, OPLeft, 0.05, 'linear')
			noteTweenY('downOP', 1, OPDown, 0.05, 'linear')
			noteTweenY('upOP', 2, OPUp, 0.05, 'linear')
			noteTweenX('rightOP', 3, OPRight, 0.05, 'linear')
		end
	end
end