local xx = -50; --750
local yy = 1425; --750
local xx2 = 175; --1500
local yy2 = 1425; --750
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;
local damage = false;
local beating = false;
local beat_skip = 0;

function onCreatePost()
    triggerEvent('Camera Follow Pos',xx,yy)
	
	addCharacterToList('darkwar')
	addCharacterToList('black-dark')
end

function onCreate()
	--background boi
	
	makeLuaSprite('floor','cargo', -2000, 450)
	makeLuaSprite('darksight','darksight', -1800, -300)
	setProperty('darksight.alpha', 0);
	scaleObject('darksight',1.5,1.5)
	makeLuaSprite('darksight2','darksightomgnoleft', -1800, -300)
	setProperty('darksight2.alpha', 0);
	scaleObject('darksight2',1.5,1.5)
    
	addLuaSprite('floor')
	addLuaSprite('darksight')
	addLuaSprite('darksight2', true)
	
	makeLuaSprite('shade','blackout', 0, 0)
	addLuaSprite('shade')
	setObjectCamera('shade', 'other');
	setProperty('shade.alpha', 0);
	setBlendMode('shade', 'multiply')

	makeLuaSprite('darkscreen','flash', 0, 0)
	addLuaSprite('darkscreen')
	setObjectCamera('darkscreen', 'other');
	setProperty('darkscreen.alpha', 0);
	
	makeLuaSprite('flashwhite','flashwhite', 0, 0)
	addLuaSprite('flashwhite')
	setProperty('flashwhite.alpha', 0);
	setObjectCamera('flashwhite', 'other');
	
end

function onBeatHit()
    if curBeat % 2 == 0 then
		if beating == true then
		 triggerEvent('Add Camera Zoom', 0.025, 0.045)
		 triggerEvent('Screen Shake','0.01, 0.01','0.1, 0.01');
		end
	end
end

function onStepHit()
	if curStep == 2176 or curStep == 2464 or curStep == 2208 or curStep == 3104 or curStep == 2240 or curStep == 2304 or curStep == 288 or curStep == 800 or curStep == 1184 or curStep == 1312 then
	flash()
	end
	if curStep == 1568 then
	flashdark()
	beating = true;
	triggerEvent('Change Character', 1, 'black-dark');
	setProperty('shade.alpha', 0.6);
	setProperty('darkscreen.alpha', 0.5);
	setProperty('darksight.alpha', 1);
	setProperty('darksight2.alpha', 1);
	end
	if curStep == 1824 then
	xx2 = 350;
	beating = false;
	triggerEvent('Change Character', 0, 'darkwar');
	setProperty('shade.alpha', 0);
	setProperty('darkscreen.alpha', 1);
	setProperty('darksight.alpha', 0);
	setProperty('darksight2.alpha', 0);
	setProperty('floor.alpha', 0);
	setProperty('camHUD.alpha', 0);
	setProperty('dad.alpha', 0);
	setProperty('gf.alpha', 0);
	
	triggerEvent('Camera Follow Pos',xx2,yy2)
	end
	if curStep == 1904 then
	doTweenAlpha('darkreturn', 'darkscreen', 0.25, 3, 'linear');
	doTweenAlpha('Hudfadeintro', 'camHUD', 0.75, 1, 'linear');
	end
	if curStep == 2112 then
	xx2 = 175;
	doTweenAlpha('darkback1', 'darkscreen', 1, 3, 'linear');
	end
	if curStep == 2144 then
	setProperty('boyfriend.alpha', 0);
	end
	if curStep == 2160 then
	doTweenAlpha('darkreturn2', 'darkscreen', 0, 1, 'linear');
	end
	if curStep == 2304 then
	setProperty('shade.alpha', 0.6);
	beating = true;
	setProperty('floor.alpha', 1);
	setProperty('boyfriend.alpha', 1);
	setProperty('dad.alpha', 1);
	setProperty('gf.alpha', 1);
	setProperty('camHUD.alpha', 1);
	triggerEvent('Change Character', 0, 'war');
	triggerEvent('Change Character', 1, 'black');
	end
	if curStep == 2463 or curStep == 2848 then
	xx = 100
	triggerEvent('Camera Follow Pos',xx,yy)
	end
	if curStep == 2591 or curStep == 2976 then
	xx = -50
	triggerEvent('Camera Follow Pos',xx,yy)
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


function flash()
    setProperty('flashwhite.alpha', 1);
	doTweenAlpha('flashdown', 'flashwhite', 0, 0.5, 'linear');
end

function flashdark()
    setProperty('darkscreen.alpha', 1);
	doTweenAlpha('flashdowndark', 'darkscreen', 0, 3, 'linear');
end
