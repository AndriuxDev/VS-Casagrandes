--hi it's me cherry i made this cuz i was upset that i made an animation for a character that's equivalent to gf's "sad" animation
--and i realized it wasn't playing bc there's no code for the gf character to cry when a combo is broken 
--and i thought "wtf. i'm going to fix this no matter how frustrating the process is." so here's my efforts
--btw remove this text that proves *i* made this and i will come for your kneecaps -cherry
local hitInARow = 0

function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        hitInARow = getProperty(hitInARow)+ 1
    end
    if hitInARow == 50 and not isSustainNote then
        playSound('combo/50combo')
    elseif hitInARow == 100 and not isSustainNote then
        playSound('combo/100combo')
    elseif hitInARow == 200 and not isSustainNote then
        playSound('combo/200combo')
    elseif hitInARow == 300 and not isSustainNote then
        playSound('combo/300combo')
    elseif hitInARow == 400 and not isSustainNote then
        playSound('combo/400combo')
    elseif hitInARow == 500 and not isSustainNote then
        playSound('combo/500combo')
    elseif hitInARow == 600 and not isSustainNote then
        playSound('combo/600combo')
    elseif hitInARow == 700 and not isSustainNote then
        playSound('combo/700combo')
    elseif hitInARow == 800 and not isSustainNote then
        playSound('combo/800combo')
    elseif hitInARow == 900 and not isSustainNote then
        playSound('combo/900combo')
    elseif hitInARow == 999 and not isSustainNote then
        playSound('combo/999combo')
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
    if hitInARow >= 10 then
        triggerEvent('Play Animation', 'sad', 'gf')
        hitInARow = 0
        playSound('combo/combobreak')
    end
end