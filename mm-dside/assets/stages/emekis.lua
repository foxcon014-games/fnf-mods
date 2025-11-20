function onCreate()
	-- background shit
	makeLuaSprite('mxback', 'mxback', -600, -300);
	setScrollFactor('mxback', 0.9, 0.9);
	
	makeLuaSprite('mxmiddle', 'mxmiddle', -600, -300);
	setScrollFactor('mxmiddle', 0.9, 0.9);

	makeLuaSprite('mxfront', 'mxfront', -600, -300);


	addLuaSprite('mxback', false);
	addLuaSprite('mxmiddle', false);
	addLuaSprite('mxfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end