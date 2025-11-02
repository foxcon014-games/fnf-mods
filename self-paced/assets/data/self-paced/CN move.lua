local xx = 1225
local yy = 650
local xx2= 825
local yy2= 850
local ofs = 20
local Angle = 1.5
local timeAngle = 0.5
local followchars = true

	function onUpdate()

	if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',getProperty('defaultCamZoom'))
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
                doTweenAngle('camGameAngle','camGame',Angle,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
                doTweenAngle('camGameAngle','camGame',-Angle,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
                doTweenAngle('camGameAngle','camGame',Angle,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
                doTweenAngle('camGameAngle','camGame',-Angle,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
            doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
            doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',getProperty('defaultCamZoom'))
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                doTweenAngle('camGameAngle','camGame',Angle,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                doTweenAngle('camGameAngle','camGame',-Angle,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
                doTweenAngle('camGameAngle','camGame',Angle,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
                doTweenAngle('camGameAngle','camGame',-Angle,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
                doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
            doTweenAngle('camGameAngle','camGame',0,timeAngle,'linear')
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
	end
    else
        triggerEvent('Camera Follow Pos','','')
		triggerEvent('Instant Camera Pos', false)
	end
end

function center()
	xx= 1000
	yy= 750
	xx2= 1000
	yy2= 750
end

function center1()
	xx= 750
	yy= 650
	xx2= 750
	yy2= 650
end

function default()
	xx= 1175
	yy= 700
	xx2= 875
	yy2= 800
end

function solo2()
	xx= 1150
	yy= 900
	xx2= 2000
	yy2= 700
end

function center2()
	xx= 1575
	yy= 800
	xx2= 1575
	yy2= 800
end

function solo()
	xx= 1225
	yy= 700
	xx2= 825
	yy2= 850
end

function solo1()
	xx= 500
	yy= 500
	xx2= 900
	yy2= 700
end

function onStepHit()
	if curStep == 26 then
	default()
	end
	if curStep == 230 then
	center()
	end
	if curStep == 292 then
	solo()
	end
	if curStep == 308 then
	default()
	end
	if curStep == 516 then
	center()
	end
	if curStep == 564 then
	solo()
	end
	if curStep == 860 then
	solo1()
	end
	if curStep == 924 then
	center1()
	end
	if curStep == 972 then
	solo1()
	end
	if curStep == 1116 then
	center1()
	end
	if curStep == 1180 then
	solo1()
	end
	if curStep == 1244 then
	center1()
	end
	if curStep == 1304 then
	solo1()
	end
	if curStep == 1308 then
	center1()
	end
	if curStep == 1436 then
	solo()
	end
	if curStep == 1596 then
	center()
	end
	if curStep == 1716 then
	solo()
	end
	if curStep == 1724 then
	solo2()
	end
	if curStep == 1916 then
	center2()
	end
	if curStep == 1996 then
	solo2()
	end
	if curStep == 2324 then
	center2()
	end
end