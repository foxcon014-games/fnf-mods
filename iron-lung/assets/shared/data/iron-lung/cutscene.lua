function onCreate()

	makeAnimatedLuaSprite('rustyCutscene', 'CutsceneOptimized', 0, 0);
	scaleObject('rustyCutscene', 2, 2);
	addAnimationByPrefix('rustyCutscene','scene1','1',24,true);
	addAnimationByPrefix('rustyCutscene','scene2','2',24,true);
        addAnimationByPrefix('rustyCutscene','scene3','3',24,true);
        addAnimationByPrefix('rustyCutscene','scene4','4',24,true);
	addAnimationByPrefix('rustyCutscene','scene5','5',24,true);
	addAnimationByPrefix('rustyCutscene','scene6','6',24,true);
	addAnimationByPrefix('rustyCutscene','scene7','7',24,true);
        addAnimationByPrefix('rustyCutscene','scene8','8',24,true);
        addAnimationByPrefix('rustyCutscene','scene9','9',24,true);
	addAnimationByPrefix('rustyCutscene','scene10','ten',24,true);
	addAnimationByPrefix('rustyCutscene','scene11','eleven',24,true);
	addAnimationByPrefix('rustyCutscene','scene12','twelve',24,true);
        setObjectCamera('rustyCutscene','hud')

	addLuaSprite('rustyCutscene', false);
        setProperty('rustyCutscene.alpha',0)
	setObjectOrder('rustyCutscene', getObjectOrder('healthBar') + 1)

end

function onStepHit()
    if curStep == 1264 then
        setProperty('rustyCutscene.alpha',1)
        playAnim('rustyCutscene','scene1',true)
    end
    if curStep == 1294 then
        playAnim('rustyCutscene','scene2',true)
    end
    if curStep == 1352 then
        playAnim('rustyCutscene','scene3',true)
    end
    if curStep == 1409 then
        playAnim('rustyCutscene','scene4',true)
    end
    if curStep == 1466 then
        playAnim('rustyCutscene','scene5',true)
    end
    if curStep == 1522 then
        playAnim('rustyCutscene','scene6',true)
    end
    if curStep == 1573 then
        playAnim('rustyCutscene','scene7',true)
    end
    if curStep == 1604 then
        playAnim('rustyCutscene','scene8',true)
    end
    if curStep == 1606 then
        playAnim('rustyCutscene','scene9',true)
    end
    if curStep == 1635 then
        playAnim('rustyCutscene','scene10',true)
        doTweenX('rustyCutscene.x', 'rustyCutscene', -1220, 15, 'Linear')
    end
    if curStep == 1792 then
        playAnim('rustyCutscene','scene11',true)
    end
    if curStep == 1800 then
        playAnim('rustyCutscene','scene12',true)
    end
    if curStep == 1808 then
        setProperty('rustyCutscene.alpha',0)
    end
end


--[[about 10 seconds pan to right on scene 10]]