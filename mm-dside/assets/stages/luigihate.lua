function onCreate()
	-- background shit
	makeLuaSprite('luigiback', 'luigiback', -600, -300);
	setScrollFactor('luigiback', 0.9, 0.9);
        scaleObject('luigiback', 2.6, 2.6);

	makeLuaSprite('ded', 'ded', -600, -100);
	setScrollFactor('ded', 0.9, 0.9);
        scaleObject('ded', 2.6, 2.6);

	makeLuaSprite('luigimiddle', 'luigimiddle', -900, -300);
        scaleObject('luigimiddle', 3, 3);

	makeLuaSprite('luigifront', 'luigifront', -300, -300);
        setScrollFactor('luigifront', 0.9, 0.9);

	
	addLuaSprite('luigiback', false);
	addLuaSprite('ded', false);
	addLuaSprite('luigimiddle', false);
        addLuaSprite('luigifront', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end