oldhealthbarwithicon = true
--rating = getProperty('ratingPercent')
customfont = 'LEMONMILK-RegularItalic.otf'
customfont2 = 'LEMONMILK-MediumItalic.otf'

function onCreate()
    makeLuaSprite('BlackBorders', 'TADC/HUD/mclines', 0, 0)
    setObjectCamera('BlackBorders', 'hud')
    scaleObject('BlackBorders', 0.70, 0.68) --0.35,0.34
    setProperty('BlackBorders.antialiasing', true);
    addLuaSprite('BlackBorders', false)

    makeLuaSprite('LazyWorkPresenta', 'TADC/HUD/LazyWorkPresenta', 2, 0)
    makeLuaSprite('Coverpor', 'TADC/HUD/Coverpor', 200, 100)
    makeLuaSprite('silversilver', 'TADC/HUD/silversilver', 200, 100)

    setObjectCamera('LazyWorkPresenta', 'hud')
    setObjectCamera('Coverpor', 'hud')
    setObjectCamera('silversilver', 'hud')
    scaleObject('LazyWorkPresenta', 0.70, 0.70)
    scaleObject('Coverpor', 0.50, 0.50)
    scaleObject('silversilver', 0.50, 0.50)

    addLuaSprite('LazyWorkPresenta', true)
    addLuaSprite('Coverpor', false)
    addLuaSprite('silversilver', false)
    setProperty('LazyWorkPresenta.alpha', 0);
    setProperty('Coverpor.alpha', 0);
    setProperty('silversilver.alpha', 0);

    makeLuaText('songScore', 'Score:'..getProperty('songScore'), 0, 1035, 695) --855,675
    setTextSize('songScore', 20);
    setTextFont('songScore', customfont)
    addLuaText('songScore', true)

    makeLuaText('misses', 'Misses:'..misses, 0, 915, 695) --1015,675,695
    setTextSize('misses', 20);
    setTextFont('misses', customfont)
    addLuaText('misses', true)

    makeLuaText('rating', 'Accuracy: ??%', 0, 215, 695)
    setTextSize('rating', 20);
    setTextFont('rating', customfont)
    addLuaText('rating', true)

    setTextFont("botplayTxt", customfont2)
    setProperty('songScore.alpha', 0);
    setProperty('misses.alpha', 0);
    setProperty('rating.alpha', 0);
    setProperty('iconP1.alpha', 0);
    setProperty('iconP2.alpha', 0);
    setProperty('healthBarBG.alpha', 0);
    setProperty('healthBar.alpha', 0);

    setObjectOrder('iconP1', getObjectOrder('dadGroup')+10)
    setObjectOrder('iconP2', getObjectOrder('dadGroup')+10)

    if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then

        setPropertyFromClass('ClientPrefs', 'middleScroll', true)

    end

end


function onUpdate(elapsed)
    --setProperty('timeBarBG.visible', false)
    --setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)

    setTextString("botplayTxt", "Bro can't even play.")
    setProperty('botplayTxt.x', 400)

    setTextString('songScore', 'Score:'..getProperty('songScore'))
    setTextString('misses', 'Misses:'..misses)
    setTextString('rating', 'Accuracy: '.. math.floor(getProperty('ratingPercent') * 100 + 0.5) .. '%')


end

function onUpdatePost() --This code is for the default fnf healthbar position
    setProperty('scoreTxt.visible', false)
    if downscroll == false then
    	if oldhealthbarwithicon == true then

    		--setProperty('iconP1.x', 1150)
    		--setProperty('iconP2.x', 735)
    		setProperty('iconP1.y', 600)
    		setProperty('iconP2.y', 590)
    		setProperty('healthBarBG.scale.x', 0.8)
    		setProperty('healthBar.scale.x', 0.8)

    		setProperty('timeBarBG.scale.x', 1.8)
    		setProperty('timeBar.scale.x', 1.8)
    		setProperty('timeBar.x', 460)
    		setProperty('timeBarBG.x', 460)

    		setObjectCamera('healthBarBG', 'hud', true)
    		setProperty('healthBar.x', 370)
    		setProperty('healthBar.y', 670)

    		setProperty('timeBarBG.y', 10)
    		setProperty('timeBar.y', 10)

    	else
    		setProperty('iconP1.x', 5150)
    		setProperty('iconP2.x', 5035)
    		setProperty('healthBarBG.scale.x', 0.8)
    		setProperty('healthBar.scale.x', 0.8)
    		setObjectCamera('healthBarBG', 'hud', true)
    		setProperty('healthBar.x', 1715)
    		end
    else
        if oldhealthbarwithicon == true then
        	setProperty('iconP1.x', 1150)
        	setProperty('iconP2.x', 735)
        	setProperty('iconP2.y', 40)
        	setProperty('iconP1.y', 50)
        	setProperty('healthBarBG.scale.x', 0.8)
        	setProperty('healthBar.scale.x', 0.8)
        	setObjectCamera('healthBarBG', 'hud', true)
        	setProperty('healthBar.y', 120)
        	setProperty('healthBar.x', 715)
        else
        	setProperty('iconP1.x', 5150)
        	setProperty('iconP2.x', 5035)
        	setProperty('iconP2.y', 40)
        	setProperty('iconP1.y', 50)
        	setProperty('healthBarBG.scale.x', 0.8)
        	setProperty('healthBar.scale.x', 0.8)
        	setObjectCamera('healthBarBG', 'hud', true)
        	setProperty('healthBar.y', 120)
        	setProperty('healthBar.x', 2715)
        	end
    end
end