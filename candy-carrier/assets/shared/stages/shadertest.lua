function onCreate()
	makeLuaSprite('ShaderBackground', 'TADC/shadering5', -2650, -2200);
      scaleObject('ShaderBackground', 2.8, 2.8)
	addLuaSprite('ShaderBackground', false);

	
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end