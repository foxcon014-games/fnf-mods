--OG Code by ghost
local u = false;
local r = 0;
local xx = getMidpointX('boyfriend') - 100;
local yy = getMidpointY('boyfriend') + 200;
local xx2 = getMidpointX('boyfriend') - 125;
local yy2 = getMidpointY('boyfriend') + 100;
local xx3 = getMidpointX('boyfriend') - 300;
local yy3 = getMidpointY('boyfriend') + 300;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;
local jaxIconColor = c093ff
local pomniIconColor = ffffff
local gumigouIconColor = fccf53

function onUpdate()
if curStep > 130 then
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
runHaxeCode([[game.iconP1.changeIcon(']] .. "Jax" .. [[')]]);
setHealthBarColors(gumigouIconColor, jaxIconColor);
end
if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
runHaxeCode([[game.iconP1.changeIcon(']] .. "Jax" .. [[')]]);
setHealthBarColors(gumigouIconColor, jaxIconColor);
end
if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
end
if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx3-ofs,yy3)
runHaxeCode([[game.iconP1.changeIcon(']] .. "Pomni" .. [[')]]);
setHealthBarColors(gumigouIconColor, pomniIconColor);
end
if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx3+ofs,yy3)
runHaxeCode([[game.iconP1.changeIcon(']] .. "Pomni" .. [[')]]);
setHealthBarColors(gumigouIconColor, pomniIconColor);
end
if getProperty('gf.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx3,yy3-ofs)
end
if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx3,yy3+ofs)
end
if getProperty('boyfriend.curAnim.name') == 'idle-alt' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
if getProperty('boyfriend.curAnim.name') == 'idle' then
triggerEvent('Camera Follow Pos',xx2,yy2)
end
end
else
triggerEvent('Camera Follow Pos','','')
end
end

end