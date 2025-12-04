ooga = true
function onCreate()

        precacheImage('characters/Bf-Rob')
        precacheImage('characters/biscuits')
        precacheImage('characters/rusteroo')
        precacheImage('characters/rustSinging')

        precacheImage('BopperGuy')
        precacheImage('BopperBacon')
        precacheImage('BopperNoob')
        precacheImage('jimmytalk')
        precacheImage('runner')
        precacheImage('Lyric_Bubble')
        precacheImage('Lyrics')
        precacheImage('Lyrics2')
        precacheImage('stillThere')

        precacheImage('backgroundIRONLUNG')
        precacheImage('grass')
        precacheImage('tree')
        precacheImage('tree2')
        precacheImage('bush')
        precacheImage('lamptree')
        precacheImage('lamplight')
        precacheImage('tree3')
        precacheImage('fgtree')
        precacheImage('fgbush')
        precacheImage('cave')
        precacheImage('cavelamp')
        precacheImage('cavelamplight')
        precacheImage('fgrocks')
        precacheImage('fgvines')

	-- background shit
	setProperty('cameraSpeed',10)
	makeLuaSprite('sky', 'backgroundIRONLUNG', -900, 0);
	setScrollFactor('sky', 0.4, 0.4);
	scaleObject('sky',3.2,3.2)
	
	makeLuaSprite('grass', 'grass', -600, -300);
	setScrollFactor('grass', 1, 1);
	scaleObject('grass',3.2,3.2)
	
	makeLuaSprite('tree', 'tree', -900, -700);
	setScrollFactor('tree', 0.6, 0.6);
	scaleObject('tree',3.2,3.2)
	
	makeLuaSprite('tree2', 'tree2', -800, -440);
	setScrollFactor('tree2', 0.75, 0.8);
	scaleObject('tree2',3.2,3.2)
	
	makeLuaSprite('bush', 'bush', -600, -320);
	setScrollFactor('bush', 0.95, 0.95);
	scaleObject('bush',3.2,3.2)

	makeLuaSprite('lamptree', 'lamptree', -600, -300);
	setScrollFactor('lamptree', 0.97, 0.98);
	scaleObject('lamptree',3.2,3.2)
	
	makeLuaSprite('lamplight', 'lamplight', -2030, -1350);
	setScrollFactor('lamplight', 0.97, 0.98);
	scaleObject('lamplight',5.2,5.2)
	
	makeLuaSprite('tree3', 'tree3', -550, -200);
	setScrollFactor('tree3', 1.1, 1.1);
	scaleObject('tree3',3.2,3.2)
	
	makeLuaSprite('fgtree', 'fgtree', -300, -200);
	setScrollFactor('fgtree', 1.1, 1.2);
	scaleObject('fgtree',3.2,3.2)

	makeLuaSprite('fgbush', 'fgbush', -300, -100);
	setScrollFactor('fgbush', 1.2, 1.3);
	scaleObject('fgbush',3.2,3.2)

	makeLuaSprite('cave', 'cave', -650, -300);
	setScrollFactor('cave', 1, 1);
	scaleObject('cave',3.2,3.2)

	makeLuaSprite('bgpeople', 'bgpeople', -650, -300);
	setScrollFactor('bgpeople', 1, 1);
	scaleObject('bgpeople',3.2,3.2)
        setProperty('bgpeople.color',getColorFromHex('737c80'))

	makeLuaSprite('cavelamp', 'cavelamp', -650, -300);
	setScrollFactor('cavelamp', 0.97, 0.98);
	scaleObject('cavelamp',3.2,3.2)
	
	makeLuaSprite('cavelamplight', 'cavelamplight', -1940, -1330);
	setScrollFactor('cavelamplight', 0.97, 0.98);
	scaleObject('cavelamplight',5.2,5.2)

	makeLuaSprite('fgpeople', 'fgpeople', -550, 100);
	setScrollFactor('fgpeople', 1.2, 1.3);
	scaleObject('fgpeople',2.8,2.8)
        setProperty('fgpeople.color',getColorFromHex('737c80'))

	makeLuaSprite('fgrocks', 'fgrocks', -550, 100);
	setScrollFactor('fgrocks', 1.2, 1.3);
	scaleObject('fgrocks',2.8,2.8)

	makeLuaSprite('fgvines', 'fgvines', -550, 100);
	setScrollFactor('fgvines', 1.2, 1.3);
	scaleObject('fgvines',2.8,2.8)
	
	makeAnimatedLuaSprite('guy', 'BopperGuy', 900, 680);
        setScrollFactor('guy', 0.9, 0.9);
	scaleObject('guy', 1.6, 1.6);
	addAnimationByPrefix('guy','danceLeft','idleL',6,false);
	addAnimationByPrefix('guy','danceRight','idleR',6,false);
        setProperty('guy.color',getColorFromHex('737c80'))

	makeAnimatedLuaSprite('bacon', 'BopperBacon', 1600, 680);
        setScrollFactor('bacon', 0.9, 0.9);
	scaleObject('bacon', 1.6, 1.6);
	addAnimationByPrefix('bacon','danceLeft','idleL',6,false);
	addAnimationByPrefix('bacon','danceRight','idleR',6,false);
        setProperty('bacon.color',getColorFromHex('737c80'))


	makeAnimatedLuaSprite('noob', 'BopperNoob', 2000, 680);
        setScrollFactor('noob', 0.9, 0.9);
	scaleObject('noob', 1.6, 1.6);
	addAnimationByPrefix('noob','danceLeft','idleL',6,false);
	addAnimationByPrefix('noob','danceRight','idleR',6,false);
        setProperty('noob.color',getColorFromHex('737c80'))

	addLuaSprite('sky', false);
	
	addLuaSprite('tree', false);
	addLuaSprite('tree2', false);
        addLuaSprite('guy', false);
        addLuaSprite('bacon', false);
        addLuaSprite('noob', false);
	addLuaSprite('grass', false);
	addLuaSprite('bush', false);
	addLuaSprite('cave', false);
        addLuaSprite('bgpeople', false);

	addLuaSprite('lamptree', false);
	addLuaSprite('cavelamp', false);

	addLuaSprite('lamplight', true);
	addLuaSprite('cavelamplight', true);

	addLuaSprite('tree3', true);
	addLuaSprite('fgtree', true);
	addLuaSprite('fgbush', true);
        addLuaSprite('fgpeople', true);
	addLuaSprite('fgrocks', true);
	addLuaSprite('fgvines', true);
	
	setBlendMode('lamplight','add')
	setBlendMode('cavelamplight','add')

        setProperty('bacon.alpha',0)
        setProperty('noob.alpha',0)
        setProperty('cave.alpha',0)
        setProperty('bgpeople.alpha',0)
        setProperty('cavelamp.alpha',0)
        setProperty('cavelamplight.alpha',0)
        setProperty('fgpeople.alpha',0)
        setProperty('fgrocks.alpha',0)
        setProperty('fgvines.alpha',0)

	makeAnimatedLuaSprite('runner', 'runner', 3000, 400);
	scaleObject('runner', 4, 4);
	addAnimationByPrefix('runner','run','running',34,true);

	addLuaSprite('runner', true);
	
	makeAnimatedLuaSprite('jimmytalk', 'jimmytalk', -150, -4050);
	scaleObject('jimmytalk', 2, 2);
	addAnimationByPrefix('jimmytalk','shut','jimmytalk shut',24,true);
	addAnimationByPrefix('jimmytalk','talk','jimmytalk talk',8,true);

	
	addLuaSprite('jimmytalk', true);	
	setProperty('camGame.alpha',0)
	setProperty('jimmytalk.alpha',0)

	makeAnimatedLuaSprite('bubble', 'speech_bubble', 520, -3150);
	scaleObject('bubble', 1, 1);
	addAnimationByPrefix('bubble','open','Speech Bubble Middle Open',24,true);
	addAnimationByPrefix('bubble','static','speech bubble middle',24,true);

	addLuaSprite('bubble', true);
        setProperty('bubble.alpha',0)

	makeAnimatedLuaSprite('introText', 'IntroText', 520, -3150);
	scaleObject('introText', 2, 2);
	addAnimationByPrefix('introText','killin','Killin',24,true);
	addAnimationByPrefix('introText','just','Just',24,true);
        addAnimationByPrefix('introText','pow','Pow',24,true);

	addLuaSprite('introText', true);
        setProperty('introText.alpha',0)

	makeAnimatedLuaSprite('bubbleLyric', 'lyric_bubble', 550, 600);
        setScrollFactor('bubbleLyric', 1, 1);
	scaleObject('bubbleLyric', 2, 2);
	addAnimationByPrefix('bubbleLyric','open','Open',24,true);
	addAnimationByPrefix('bubbleLyric','static','Static',24,true);
        setObjectOrder('bubbleLyric', getObjectOrder("tree3") - 1)

	addLuaSprite('bubbleLyric', true);
        setProperty('bubbleLyric.alpha',0)

	makeAnimatedLuaSprite('lyrics', 'Lyrics', 550, 600);
        setScrollFactor('lyrics', 1, 1);
	scaleObject('lyrics', 2, 2);
	addAnimationByPrefix('lyrics','serve','Serve',24,true);
	addAnimationByPrefix('lyrics','wicked','Wicked',24,true);
        addAnimationByPrefix('lyrics','life','Life',24,true);
        addAnimationByPrefix('lyrics','play','Play',24,true);
        addAnimationByPrefix('lyrics','ragh','Ragh',24,true);
        addAnimationByPrefix('lyrics','ring','Ring',24,true);
        setObjectOrder('lyrics', getObjectOrder("tree3") - 1)

	addLuaSprite('lyrics', true);
        setProperty('lyrics.alpha',0)	

	makeAnimatedLuaSprite('stillThere', 'StillThere', 120, 140);
	scaleObject('stillThere', 0.8, 0.8);
	addAnimationByPrefix('stillThere','are','Are',24,true);
	addAnimationByPrefix('stillThere','u','U',24,true);
        addAnimationByPrefix('stillThere','still','Still',24,true);
        addAnimationByPrefix('stillThere','there','There',24,true);
        setObjectCamera('stillThere','hud')

	addLuaSprite('stillThere', true);
        setProperty('stillThere.alpha',0)	

	makeAnimatedLuaSprite('lyrics2', 'Lyrics2', 550, 600);
        setScrollFactor('lyrics2', 1, 1);
	scaleObject('lyrics2', 2, 2);
	addAnimationByPrefix('lyrics2','imThe','ImThe',24,true);
	addAnimationByPrefix('lyrics2','notLike','NotLike',24,true);
        addAnimationByPrefix('lyrics2','imDone','ImDone',24,true);
        addAnimationByPrefix('lyrics2','soDamn','SoDamn',24,true);
        addAnimationByPrefix('lyrics2','godsA','GodsA',24,true);
        addAnimationByPrefix('lyrics2','delusion','Delusion',24,true);
        addAnimationByPrefix('lyrics2','tellMe','TellMe',24,true);
        addAnimationByPrefix('lyrics2','within','Within',24,true);
        setObjectOrder('lyrics2', getObjectOrder("tree3") - 1)

	addLuaSprite('lyrics2', true);
        setProperty('lyrics2.alpha',0)	
end

function onCreatePost()
        setProperty('gf.alpha',0)
        setProperty('boyfriend.color',getColorFromHex('737c80'))
end
function onUpdatePost(el)

if ooga == true then
    setProperty('dad.color',getColorFromHex('737c80'))
end

end

bopperLR = "L"

function onBeatHit()
    if curBeat % 1 == 0 then
        if bopperLR == "L" then
            bopperLR = "R"
            playAnim('guy','danceLeft',false)
            playAnim('bacon','danceLeft',false)
            playAnim('noob','danceLeft',false)
        elseif bopperLR == "R" then
            bopperLR = "L"
            playAnim('guy','danceRight',false)
            playAnim('bacon','danceRight',false)
            playAnim('noob','danceRight',false)
        end
    end
end

function onStepHit()

        --INTRO STUFF!!!!!!!!

	if curStep == 1 then
	doTweenAlpha('jimmytalk','jimmytalk',1,3)
        playAnim('jimmytalk','shut',true)
	setProperty('camGame.alpha',1)
	end

	if curStep == 13 then
	
	playAnim('jimmytalk','talk',true)
        setProperty('bubble.alpha',1)
        playAnim('bubble','open',true)
	
	end

        if curStep == 14 then

        playAnim('bubble','static',true)
        setProperty('introText.alpha',1)
        playAnim('introText','killin',true)

        end

	if curStep == 57 then
	
	playAnim('jimmytalk','talk',true)
        playAnim('introText','just',true)
	
	end

	if curStep == 81 then
	
	playAnim('jimmytalk','talk',true)
        playAnim('introText','pow',true)
	
	end

	if curStep == 40 or curStep == 76 then
	
	playAnim('jimmytalk','shut',true)
	
	end
	if curStep == 81 then
	
		doTweenAlpha('jimmytalk','jimmytalk',0,1)
                doTweenAlpha('bubble','bubble',0,1)
                doTweenAlpha('introText','introText',0,1)
        end

        --LYRIC STUFF!!!!!!!!!
	
        if curStep == 356 then
                setProperty('bubbleLyric.alpha',1)
                playAnim('bubbleLyric','open',true)
                doTweenAlpha('fakenotes','fakenotes',0.5,1)
	end
        if curStep == 357 then
                playAnim('bubbleLyric','static',true)
                setProperty('lyrics.alpha',1)
                playAnim('lyrics','serve',true)
	end
        if curStep == 392 then
                playAnim('lyrics','wicked',true)
	end
        if curStep == 422 then
                playAnim('lyrics','life',true)
	end
        if curStep == 448 then
                playAnim('lyrics','play',true)
	end
        if curStep == 480 then
                playAnim('lyrics','ragh',true)
	end
        if curStep == 512 then
                playAnim('lyrics','ring',true)
	end
        if curStep == 552 then
                playAnim('lyrics','life',true)
	end
        if curStep == 576 then
                playAnim('lyrics','play',true)
	end
        if curStep == 608 then
                doTweenAlpha('bubbleLyric','bubbleLyric',0,1)
                doTweenAlpha('lyrics','lyrics',0,1)
                doTweenAlpha('fakenotes','fakenotes',1,1)
	end
        if curStep == 992 then
                setProperty('stillThere.alpha',1)
                playAnim('stillThere','are',true)
	end
        if curStep == 996 then
                playAnim('stillThere','u',true)
	end
        if curStep == 1000 then
                playAnim('stillThere','still',true)
	end
        if curStep == 1004 then
                playAnim('stillThere','there',true)
	end
        if curStep == 1008 then
                setProperty('stillThere.alpha',0)
                setProperty('guy.alpha',1)
                setProperty('bacon.alpha',1)
                setProperty('noob.alpha',1)
	end
        if curStep == 1807 then
                setProperty('bubbleLyric.alpha',1)
                playAnim('bubbleLyric','open',true)
                doTweenAlpha('fakenotes','fakenotes',0.5,1)
	end
        if curStep == 1808 then
                playAnim('bubbleLyric','static',true)
                setProperty('lyrics2.alpha',1)
                playAnim('lyrics2','imThe',true)
                setProperty('guy.alpha',0)
                setProperty('bacon.alpha',0)
                setProperty('noob.alpha',0)
                setProperty('tree.alpha',0)
                setProperty('tree2.alpha',0)
                setProperty('grass.alpha',0)
                setProperty('bush.alpha',0)
                setProperty('lamptree.alpha',0)
                setProperty('lamplight.alpha',0)
                setProperty('tree3.alpha',0)
                setProperty('fgtree.alpha',0)
                setProperty('fgbush.alpha',0)
                setProperty('bacon.alpha',0)
                setProperty('noob.alpha',0)
                setProperty('cave.alpha',1)
                setProperty('bgpeople.alpha',1)
                setProperty('cavelamp.alpha',1)
                setProperty('cavelamplight.alpha',1)
                setProperty('fgpeople.alpha',1)
                setProperty('fgrocks.alpha',1)
                setProperty('fgvines.alpha',1)
                setProperty('boyfriend.color',getColorFromHex('737c80'))
	end
        if curStep == 1840 then
                playAnim('lyrics2','notLike',true)
	end
        if curStep == 1872 then
                playAnim('lyrics2','imDone',true)
	end
        if curStep == 1900 then
                playAnim('lyrics2','soDamn',true)
	end
        if curStep == 1936 then
                playAnim('lyrics2','godsA',true)
	end
        if curStep == 1964 then
                playAnim('lyrics2','delusion',true)
	end
        if curStep == 1999 then
                playAnim('lyrics2','tellMe',true)
	end
        if curStep == 2028 then
                playAnim('lyrics2','within',true)
	end
        if curStep == 2064 then
                doTweenAlpha('bubbleLyric','bubbleLyric',0,1)
                doTweenAlpha('lyrics2','lyrics',0,1)
                doTweenAlpha('fakenotes','fakenotes',1,1)
	end

	if curStep == 92 then
	        setProperty('camGame.alpha',0)
	end
	if curStep == 96 then
		setProperty('camGame.alpha',1)
	end
	if curStep == 102 then
	        setProperty('cameraSpeed',1)
	end
	if curStep == 308 then
		doTweenX('runner','runner',-3000,0.1,'linear')
                setProperty('guy.alpha',0)
	end
	if curStep == 295 then
	
		playSound('whoosh')
	end
	if curStep == 2063 then
	        ooga = false
	end
	if curStep == 2064 then
                setProperty('cave.alpha',0)
                setProperty('bgpeople.alpha',0)
                setProperty('cavelamp.alpha',0)
                setProperty('cavelamplight.alpha',0)
                setProperty('fgpeople.alpha',0)
                setProperty('fgrocks.alpha',0)
                setProperty('fgvines.alpha',0)
	end
	if curStep == 2340 then
	        setProperty('cameraSpeed',0.2)
	end
	if curStep == 2368 then
	        doTweenAlpha('gamegonelol','camGame',0,10)
        end
end