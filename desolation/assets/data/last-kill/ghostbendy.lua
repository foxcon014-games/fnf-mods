holdTimer = -1.0;
singDuration = 4;
specialAnim = false;

characterAnimationsList = {};

characterAnimationsList[0] = 'idle' -- idle
characterAnimationsList[1] = 'singLEFT' -- left
characterAnimationsList[2] = 'singDOWN' -- down
characterAnimationsList[3] = 'singUP' -- up
characterAnimationsList[4] = 'singRIGHT' -- right

player3 = 'bendy'
directions = {'left', 'down', 'up', 'right'}

function onCreate() -- change this part for your character image (and the animation prefixes too) (you're also gonna need to make your own offset values)
	--- Caching the character into the memory ---
	makeAnimatedLuaSprite(player3, 'characters/Bendy_remastered', -500, 1030);

	--- Setting up Character Animations ---
	addAnimationByPrefix(player3, 'idle', 'Bendy Idle instance', 24, true);
	addOffset(player3, 'idle', -5, -104)

	addAnimationByPrefix(player3, 'singLEFT', 'Left instance', 24, false);
	addOffset(player3, 'singLEFT', 235, -95)

	addAnimationByPrefix(player3, 'singDOWN', 'bendydown instance', 24, false);
	addOffset(player3, 'singDOWN', 61, -136)

	addAnimationByPrefix(player3, 'singUP', 'Up instance', 24, false);
	addOffset(player3, 'singUP', 117, 70)

	addAnimationByPrefix(player3, 'singRIGHT', 'B-Right instance', 24, false);
	addOffset(player3, 'singRIGHT', 50, -120)

end

function onCreatePost()
	setProperty(player3..'.flipX', false) -- remove this for other characters, this flips their x position
	addLuaSprite(player3, true);
	setProperty(player3..'.alpha',0)
	scaleObject(player3,1.45,1.45)
	setProperty(player3..'.antialiasing',false)
	setProperty('bendy.visible', true);

end
local allowbop = false


function onCountdownTick(count)
	if count % 2 == 0 then
		characterPlayAnimation(0, false)
	end
end
function opponentNoteHit(id, noteData, noteType, isSustainNote)
		characterPlayAnimation(noteData + 1, true)
end
function characterPlayAnimation(animId, forced) -- thank you shadowmario :imp:
	-- 0 = idle
	-- 1 = left
	-- 2 = down
	-- 3 = up
	-- 4 = right

	specialAnim = false;

	local animName = characterAnimationsList[animId]
	playAnim(player3, animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)

	if animId > 0 then 
		specialAnim = true ;
		holdTimer = 0;
	end
end
function onUpdate(elapsed)
	holdCap = stepCrochet * 0.0011 * singDuration;
	if holdTimer >= 0 then
		holdTimer = holdTimer + elapsed;
		if holdTimer >= holdCap and getProperty(player3..".animation.curAnim.name"):sub(1,4) == 'sing' then
			characterPlayAnimation(0, false)
			holdTimer = -1;
		end
	end
	if getProperty(player3..".animation.curAnim.finished") and specialAnim then
		specialAnim = false;
	end
end


    function onStepHit()
	if curStep == 1024 then
		doTweenAlpha('darkreturn2', player3, 0.6, 3, 'linear');
	end
	if curStep == 1280 then
		doTweenAlpha('darkreturn1', player3, 0, 3, 'linear');
	end
end