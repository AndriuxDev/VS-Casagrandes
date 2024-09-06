function onUpdate(elapsed)
    if keyJustPressed('space') then
		playSound('HEY', 0.7);
        characterPlayAnim('boyfriend', 'hey', true);
        setProperty('boyfriend.specialAnim', true);
    end
end