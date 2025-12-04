function onCreate()

	makeLuaSprite('healthBarlung','healthBarlung',25,575)
	scaleObject('healthBarlung', 1.8, 1.8)
	setObjectCamera('healthBarlung','hud')
	addLuaSprite('healthBarlung',true)
	
        setProperty('healthBarBG.visible',false)	
	
end
function onCreatePost()

	setObjectOrder('healthBarlung', getObjectOrder('healthBar') + 50)
	setObjectOrder('iconP1', getObjectOrder('healthBarlung') + 1)
	setObjectOrder('iconP2', getObjectOrder('healthBarlung') + 1)
        setObjectOrder('scoreTxt', getObjectOrder('healthBarlung') + 3)
	
	setProperty('healthBar.x', 74.7)
	setProperty('healthBar.y', 631.6)
	scaleObject('healthBar',0.894,0.89)

end
function onUpdatePost()
        --setProperty('iconP1.visible',false)
        --setProperty('iconP2.visible',false)

	setProperty('iconP1.x',890)
	setProperty('iconP1.y',575)
	
	setProperty('iconP2.x',243)
	setProperty('iconP2.y',576)

	setProperty('healthBarlung.alpha',getProperty('healthBar.alpha'))
	setProperty('healthBarlung.visible',getProperty('healthBar.visible'))
	end