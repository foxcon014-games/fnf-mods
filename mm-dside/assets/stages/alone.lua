function onCreate()
	-- background shit
	makeLuaSprite('depresion', 'depresion', -400, -300);
        scaleObject('depresion', 2, 2);
	
	addLuaSprite('depresion', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end