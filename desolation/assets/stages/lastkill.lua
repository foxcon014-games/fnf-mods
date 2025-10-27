local xx = -50; --750
local yy = 1350; --750
local xx2 = 175; --1500
local yy2 = 1350; --750
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;
local damage = false;
local beating = true;
local beat_skip = 0;

function onCreatePost()
    triggerEvent('Camera Follow Pos',xx,yy)
	
    middle = getPropertyFromClass('ClientPrefs', 'middleScroll')
    if middle == false then
        for i = 0,7 do
            xValue = getPropertyFromGroup('strumLineNotes', i, 'x')
            if i < 3.5 then
                setPropertyFromGroup('strumLineNotes', i, 'x', xValue+9999)
            else
                setPropertyFromGroup('strumLineNotes', i, 'x', xValue-300)
            end
        end
    end
end

function onCreate()
	--background boi
	
	makeLuaSprite('floor','postdemise', -900, 450)
	scaleObject('floor',0.75,0.75)
	
	makeLuaSprite('deadwar','deadwar', 400, 1250)
	
	makeLuaSprite('back','MidGrounUTS', -900, 450)
	scaleObject('back',0.75,0.75)
	
	makeAnimatedLuaSprite('sammy','sammywhite', -200, 1000)
	addAnimationByPrefix('sammy','loop','sammysamsungoversightdoublekill',24,false)
    objectPlayAnimation('sammy','loop',false);
    
	addLuaSprite('floor')
	addLuaSprite('sammy')
	addLuaSprite('back')
	addLuaSprite('deadwar', true)
	setProperty('deadwar.alpha', 0);
	
	makeLuaSprite('fadingdark','BACKBACKgROUND', 0, 0)
	addLuaSprite('fadingdark', true)
	setProperty('fadingdark.alpha', 0);
	setObjectCamera('fadingdark', 'other');
	
	makeLuaSprite('darkscreen','flash', 0, 0)
	addLuaSprite('darkscreen')
	setObjectCamera('darkscreen', 'other');
	
	makeLuaSprite('flashwhite','flashwhite', 0, 0)
	addLuaSprite('flashwhite')
	setProperty('flashwhite.alpha', 0);
	setObjectCamera('flashwhite', 'other');
	
	makeLuaSprite('jumpscare','jumpsss', 0, 0)
	addLuaSprite('jumpscare')
	setProperty('jumpscare.alpha', 0);
	setObjectCamera('jumpscare', 'other');

    makeLuaSprite('ready','ready', 300, 200)
	addLuaSprite('ready')
	setProperty('ready.alpha', 0);
	setObjectCamera('ready', 'other');

    makeLuaSprite('set','set', 300, 200)
	addLuaSprite('set')
	setProperty('set.alpha', 0);
	setObjectCamera('set', 'other');
	
	makeLuaSprite('go','go', 300, 200)
	addLuaSprite('go')
	setProperty('go.alpha', 0);
	setObjectCamera('go', 'other');
	
	doTweenAlpha('fadingdarkintro', 'fadingdark', 0.75, 3, 'linear');
    runTimer('fadingdarkintro', 4);
	setBlendMode('fadingdark', 'multiply')
	
	setProperty('camHUD.alpha', 0);
	
end

function onBeatHit()
	if curBeat % 2 == 0 then
	playAnim('sammy','loop',false);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'fadingdarkintro' then
	doTweenAlpha('fadingdarkoutro', 'fadingdark', 0, 3, 'linear');
    runTimer('fadingdarkoutro', 4);
	end
	if tag == 'fadingdarkoutro' then
	doTweenAlpha('fadingdarkintro', 'fadingdark', 0.75, 3, 'linear');
    runTimer('fadingdarkintro', 4);
	end
end

function onStepHit()
    if curStep == 13 then
	doTweenAlpha('introfade', 'darkscreen', 0, 5, 'linear');
	end
	if curStep == 2320 then
	doTweenAlpha('outrofade', 'darkscreen', 1, 3, 'linear');
	end
	if curStep == 128 or curStep == 1024 or curStep == 1788 or curStep == 1792 or curStep == 2304 then
	flash()
	end
	if curStep == 128 then
	doTweenAlpha('Hudfadeintro', 'camHUD', 1, 1, 'linear');
	end
	if curStep == 1792 then
	setProperty('darkscreen.alpha', 0);
	setProperty('camHUD.alpha', 1);
	setProperty('boyfriend.alpha', 0);
	setProperty('deadwar.alpha', 1);
	triggerEvent('Change Character', 0, 'jel');
	end
	if curStep == 1664 then
	doTweenAlpha('Hudfade', 'camHUD', 0, 1, 'linear');
	doTweenAlpha('darkscreenfade', 'darkscreen', 1, 1, 'linear');
	doTweenAlpha('jumpfaceintro', 'jumpscare', 1, 1, 'linear');
	end
	if curStep == 1776 then
    setProperty('jumpscare.alpha', 0);
	end
	if curStep == 1780 then
	setProperty('ready.alpha', 1);
	doTweenAlpha('ready', 'ready', 0, 0.2, 'linear');
	end
	if curStep == 1784 then
	setProperty('set.alpha', 1);
	doTweenAlpha('set', 'set', 0, 0.2, 'linear');
	end
	if curStep == 1788 then
	setProperty('go.alpha', 1);
	doTweenAlpha('go', 'go', 0, 0.2, 'linear');
	playSound('defeat_kill_ballz_sfx', 1)
	end
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end

        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
			end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end


function opponentNoteHit()
	
    health = getProperty('health')
        if getProperty('health') > 0.05 then
            setProperty('health', health- 0.02);
		end
end

function flash()
    setProperty('flashwhite.alpha', 1);
	doTweenAlpha('flashdown', 'flashwhite', 0, 0.5, 'linear');
end
