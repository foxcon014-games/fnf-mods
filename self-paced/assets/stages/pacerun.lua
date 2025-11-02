function onCreate()

	initLuaShader('glitch')
	initLuaShader('rareblin')
    initLuaShader('bgGlitch')
	
	makeLuaSprite('bblack', 'bblack', -1025, -560)
	setObjectOrder('bblack', 0)
	scaleObject('bblack', 4, 4)
	
	addLuaSprite('bblack', true)
	
	makeLuaSprite('BlackVG', 'BlackVG', 0, 0);
	addLuaSprite('BlackVG', true);
	setObjectCamera('BlackVG', 'other');
	setProperty('BlackVG.visible', true)
	
	makeLuaSprite('boo', 'boo', 0, 0);
	addLuaSprite('boo', true);
	setObjectCamera('boo', 'other');
	setProperty('boo.visible', false)
	
	makeLuaSprite('DH', 'DH', 15, -15);
	addLuaSprite('DH', true);
	setObjectCamera('DH', 'hud');
	
	setProperty('gfGroup.visible', false);
	
	makeLuaSprite('bg', 'black-red', -900, -800)
	setObjectOrder('bg', 0)
	scaleObject('bg', 4, 4)
	
	addLuaSprite('bg', false);
	
	setProperty('bg.visible', false)
	
	doTweenX('bgMove', 'bg', -9000, 2, 'linear')
end


function onTweenCompleted(tag)
	if tag == 'bgReset' then
		doTweenX('bgMove', 'bg', -900, 0.001, 'linear')
	end
	if tag == 'bgMove' then
		doTweenX('bgReset', 'bg', -9000, 2, 'linear')
	end
end

function onUpdate(elapsed)
    setShaderFloat('dad', 'iTime', os.clock())
	setShaderFloat('boyfriend', 'iTime', os.clock())
	setShaderFloat('bblack', 'iTime', os.clock())
	setShaderFloat('black-red', 'iTime', os.clock())
	
	noteTweenAlpha("Note0", 0, 0.5, 0.1, ".cubeInOut")
	noteTweenAlpha("Note1", 1, 0.5, 0.1, ".cubeInOut")
	noteTweenAlpha("Note2", 2, 0.5, 0.1, ".cubeInOut")
	noteTweenAlpha("Note3", 3, 0.5, 0.1, ".cubeInOut")
end

function middle()
	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 320);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 320);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 320);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 320);
	
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 - -320);
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 - -320);
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 - -320);
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 - -320);
end

function unmiddle()
	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 0);
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 0);
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 0);
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 0);
	
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 - -0);
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 - -0);
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 - -0);
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 - -0);
end

function onStepHit()
	if curStep == 1 then
	setSpriteShader('dad', 'glitch')
	end
	if curStep == 26 then
	setProperty('BlackVG.visible', false)
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 292 then
	setSpriteShader('dad', 'glitch')
	setProperty('BlackVG.visible', true)
	end
	if curStep == 303 then
	setProperty('BlackVG.visible', false)
	end
	if curStep == 308 then
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 708 then
	setProperty('BlackVG.visible', true)
	setProperty('dadGroup.visible', false);
	setSpriteShader('boyfriend', 'glitch')
	middle()
	end
	if curStep == 720 then
	setProperty('BlackVG.visible', false)
	end
	if curStep == 730 then
	removeSpriteShader('boyfriend', 'glitch')
	end
	if curStep == 860 then
	setProperty('gfGroup.visible', true);
	setProperty('bblack.visible', false);
	setProperty('dadGroup.visible', true);
	setProperty('bg.visible', true)
	unmiddle()
	end
	if curStep == 976 then
	setSpriteShader('dad', 'glitch')
	end
	if curStep == 988 then
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 1116 then
	setSpriteShader('boyfriend', 'rareblin')
	setSpriteShader('dad', 'rareblin')
	setSpriteShader('bg', 'bgGlitch')
	end
	if curStep == 1180 then
	removeSpriteShader('boyfriend', 'rareblin')
	removeSpriteShader('dad', 'rareblin')
	removeSpriteShader('bg', 'bgGlitch')
	end
	if curStep == 1452 then
	setSpriteShader('dad', 'glitch')
	setProperty('bg.visible', false)
	setProperty('bblack.visible', true);
	setProperty('gfGroup.visible', false);
	setProperty('BlackVG.visible', true)
	end
	if curStep == 1468 then
	removeSpriteShader('dad', 'glitch')
	setSpriteShader('dad', 'rareblin')
	setSpriteShader('bblack', 'bgGlitch')
	setSpriteShader('boyfriend', 'rareblin')
	setProperty('BlackVG.visible', false)
	end
	if curStep == 1660 then
	removeSpriteShader('dad', 'rareblin')
	removeSpriteShader('bblack', 'bgGlitch')
	removeSpriteShader('boyfriend', 'rareblin')
	end
	if curStep == 1716 then
	setSpriteShader('dad', 'glitch')
	end
	if curStep == 1724 then
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 1864 then
	setSpriteShader('dad', 'glitch')
	end
	if curStep == 1868 then
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 1880 then
	setSpriteShader('dad', 'glitch')
	end
	if curStep == 1884 then
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 1896 then
	setSpriteShader('dad', 'glitch')
	end
	if curStep == 1900 then
	removeSpriteShader('dad', 'glitch')
	end
	if curStep == 2532 then
	setSpriteShader('dad', 'rareblin')
	setSpriteShader('bblack', 'bgGlitch')
	setSpriteShader('boyfriend', 'rareblin')
	end
	if curStep == 2544 then
	removeSpriteShader('dad', 'rareblin')
	removeSpriteShader('bblack', 'bgGlitch')
	removeSpriteShader('boyfriend', 'rareblin')
	end
	if curStep == 2548 then
	setProperty('boo.visible', true)
	end
	if curStep == 2580 then
	doTweenAlpha('alpha', 'boo', 0, 4, ".cubeInOut")
	end
end