customfont = 'LEMONMILK-RegularItalic.otf'
customfont2 = 'LEMONMILK-MediumItalic.otf'
jaxc = 'FF99FF'
ragathac = 'FFA9E9'
ganglec = 'FF4444'
gumugc = 'FFFF66'

-- ¡TE HARÉ... DECIR... CUÁN CRACK SOY PARA TI!  ¡Y ASÍ... ME MI-RARÁS... HASTA CHORIZO... GRITAR!!11!1!!

--setTextString('lyric', value1)
--setTextColor('lyric', value2)

function onCreate()
    makeLuaText('Lyricas', ' ', screenWidth, 395, 545)
    setTextFont('Lyricas', customfont)
    setTextSize('Lyricas', 30)
    setTextWidth('Lyricas', 550)
    addLuaText('Lyricas', true);

    --setProperty('Lyricas.y', 545);

    makeAnimatedLuaSprite('DICONS', 'TADC/hud/IconosPLUS', 200, 530);
    makeAnimatedLuaSprite('DICONS2', 'TADC/hud/IconosPLUS', 950, 530);
    setObjectCamera('DICONS', 'hud')
    setObjectCamera('DICONS2', 'hud')
    --scaleObject('DICONS', 1.5, 1.5);

    addLuaSprite('DICONS', true);
    addLuaSprite('DICONS2', true);
    addAnimationByPrefix('DICONS', 'J1', 'JaxA', 0, true);
    addAnimationByPrefix('DICONS', 'J2', 'JaxE', 0, true);
    addAnimationByPrefix('DICONS', 'J5', 'JaxB', 0, true);
    addAnimationByPrefix('DICONS', 'J3', 'JaxF', 0, true);
    addAnimationByPrefix('DICONS', 'J6', 'JaxC', 0, true);
    addAnimationByPrefix('DICONS', 'J4', 'JaxD', 0, true);
    addAnimationByPrefix('DICONS', 'J7', 'JaxG', 0, true);
    addAnimationByPrefix('DICONS2', 'Ga1', 'GangleB', 0, true);
    addAnimationByPrefix('DICONS2', 'Ga2', 'GangleA', 0, true);
    addAnimationByPrefix('DICONS2', 'Ga3', 'GangleC', 0, true);
    addAnimationByPrefix('DICONS', 'Gu1', 'gumiguo', 0, true);
    addAnimationByPrefix('DICONS', 'Gu2', 'guminojado', 0, true);
    addAnimationByPrefix('DICONS2', 'Ragatha', 'ragathagritaJAXXX', 0, true);
    playAnim('DICONS', 'J1', true)
    playAnim('DICONS2', 'Ga2', true)
    setProperty('DICONS.alpha', 0);
    setProperty('DICONS2.alpha', 0);
end

function onStepHit()
	if curBeat == 0 then
		setTextString('Lyricas', "We catch up to them... I'll jump over and crawl inside...")
		setTextColor('Lyricas', jaxc)
		setProperty('DICONS.alpha', 1);
		setProperty('DICONS2.alpha', 1);
		playAnim('DICONS', 'J1', true)

		doTweenAlpha('LazyWorkPresentaalpha', 'LazyWorkPresenta', 1, 1, 'cube');
	end

	if curBeat == 5 then
		playAnim('DICONS', 'J1', true)
		doTweenAlpha('Coverporalpha', 'Coverpor', 1, 1, 'cubeIn');
		doTweenAlpha('silversilveralpha', 'silversilver', 1, 1, 'cubeIn');
	end
	if curBeat == 6 then
		playAnim('DICONS', 'J1', true)
		doTweenAlpha('LazyWorkPresentaalpha', 'LazyWorkPresenta', 0, 0.1, 'cube');
	end

	if curBeat == 8 then
		setTextString('Lyricas', "And shoot them repeatedly until they're unrecognizable.")
		setTextColor('Lyricas', jaxc)
		playAnim('DICONS', 'J1', true)
	end

	if curBeat == 12 then
		doTweenAlpha('Coverporalpha', 'Coverpor', 0, 0.5, 'cubeIn');
		doTweenAlpha('silversilveralpha', 'silversilver', 0, 0.5, 'cubeIn');
	end

	if curBeat == 15 then
		setTextString('Lyricas', "I feel like that violates some kind of convention...")
		setTextColor('Lyricas', ganglec)
		playAnim('DICONS2', 'Ga1', true)
	end

	if curBeat == 19 then
		playAnim('DICONS', 'J3', true)
	end

	if curBeat == 23 then
		setTextString('Lyricas', "You are violating my ears with your clapback.")
		setTextColor('Lyricas', jaxc)
		playAnim('DICONS', 'J7', true)
		playAnim('DICONS2', 'Ga2', true)
	end

	if curBeat == 26 then
		playAnim('DICONS', 'J5', true)
	end

	if curBeat == 29 then
		setTextString('Lyricas', "Get driving driver!")
		setTextColor('Lyricas', jaxc)
		playAnim('DICONS', 'J4', true)
		playAnim('DICONS2', 'Ga3', true)
	end

	if curBeat == 32 then
		doTweenAlpha('DICONSalpha', 'DICONS', 0, 0.5, 'linear');
		doTweenAlpha('DICONS2alpha', 'DICONS2', 0, 0.5, 'linear');
		doTweenAlpha('Lyricasalpha', 'Lyricas', 0, 0.5, 'linear');
	end

	if curBeat == 100 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 1, 0.1, 'cube');
		setTextString('Lyricas', "Oh! Now we're cooking!")
		setTextColor('Lyricas', jaxc)
	end

	if curBeat == 104 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 0, 0.5, 'cube');
	end

	if curBeat == 362 then
		setProperty('Lyricas.y', 145);
		doTweenAlpha('Lyricasalpha', 'Lyricas', 1, 0.1, 'cube');
		setTextString('Lyricas', "This lot's trouble.")
		setTextColor('Lyricas', gumugc)
		doTweenAlpha('DICONSalpha', 'DICONS', 0, 0.1, 'linear');
		doTweenAlpha('DICONS2alpha', 'DICONS2', 0, 0.1, 'linear');
	end

	if curBeat == 368 then
		setTextString('Lyricas', "Let's see how their rig does on those rocks 'round there.")
		setTextColor('Lyricas', gumugc)
	end

	if curBeat == 371 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 0, 0.5, 'cube');
	end

	if curBeat == 373 then
		setTextString('Lyricas', "...")
	end

	if curBeat == 374 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 1, 0.1, 'cube');
		setTextString('Lyricas', "JAX!")
		setTextColor('Lyricas', ragathac)
	end

	if curBeat == 376 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 0, 0.5, 'cube');
	end

	if curStep == 2170 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 1, 0.1, 'cube');
		setTextString('Lyricas', "...")
		setProperty('Lyricas.y', 145);
		setTextColor('Lyricas', ganglec)
		doTweenAlpha('DICONSalpha', 'DICONS', 0, 0.1, 'linear');
		doTweenAlpha('DICONS2alpha', 'DICONS2', 0, 0.1, 'linear');
	end

	if curStep == 2189 then
		setTextString('Lyricas', "...?")
		setTextColor('Lyricas', ganglec)
	end

	if curStep == 2195 then
		setTextString('Lyricas', "...W-W-What? Wha?")
		setTextColor('Lyricas', ganglec)
	end

	if curStep == 2211 then
		setTextString('Lyricas', "I blame YOU for this.")
		setTextColor('Lyricas', jaxc)
	end

	if curStep == 2231 then
		doTweenAlpha('Lyricasalpha', 'Lyricas', 0, 0.5, 'cube');
	end
end