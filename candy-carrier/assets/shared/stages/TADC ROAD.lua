sprite = 'TADC/colinas'
spritespeed = 'TADC/nubes'
spritecutscene = 'TADC/cutscenefondonew'
spritechoco1 = 'TADC/Chocolatozo'
size = 3840
size2 = 3376
sizeCho = 3500 --1920
startX = -3000
startY = 0
startX2 = -3000
startY2 = -400
startX3 = -2500
startY3 = 50
startXCho1 = -2480
startXCho2 = -2480
scalefinaltruck = 1

startYCho1 = 1025 --50/565  565
startYCho2 = 910 --menos115/435  420
startYCho3 = 795 --65x2 para cada restasuma/305  275
startYCho4 = 680 --240  130
startYCho5 = 565 --110  -15
startYCho6 = 420 --/-20  -160
startYCho7 = 275 --/-150  -305
startYCho8 = 130 --/-280  -450
startYCho9 = -15 --/-410  -595
startYCho10 = -160 --/-540   -740

duration = 1.5
duration2 = 15
duration3 = 3.5

luaDebugMode = false

function onCreate()
	makeLuaSprite(sprite .. '1', sprite, startX, startY)
	scaleObject(sprite .. '1', 1, 1);
	setScrollFactor(sprite .. '1', 1, 1.8);

	makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
	scaleObject(sprite .. '2', 1, 1);
	setScrollFactor(sprite .. '2', 1, 1.8);

	makeLuaSprite(spritecutscene .. '1', spritecutscene, startX3, startY3) --CUTSCENE GUMIGOU
	scaleObject(spritecutscene .. '1', 1, 1);
	setScrollFactor(spritecutscene .. '1', 1, 1.8);
	makeLuaSprite(spritecutscene .. '2', spritecutscene, startX3 + size2, startY3)
	scaleObject(spritecutscene .. '2', 1, 1);
	setScrollFactor(spritecutscene .. '2', 1, 1.8);



	makeAnimatedLuaSprite(spritechoco1 .. '1', spritechoco1, startXCho1, startYCho1)
	setScrollFactor(spritechoco1 .. '1', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '2', spritechoco1, startXCho1 + sizeCho, startYCho1)
	setScrollFactor(spritechoco1 .. '2', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '3', spritechoco1, startXCho2, startYCho2)
	setScrollFactor(spritechoco1 .. '3', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '4', spritechoco1, startXCho2 - sizeCho, startYCho2)
	setScrollFactor(spritechoco1 .. '4', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '5', spritechoco1, startXCho1, startYCho3)
	setScrollFactor(spritechoco1 .. '5', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '6', spritechoco1, startXCho1 + sizeCho, startYCho3)
	setScrollFactor(spritechoco1 .. '6', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '7', spritechoco1, startXCho2, startYCho4)
	setScrollFactor(spritechoco1 .. '7', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '8', spritechoco1, startXCho2 - sizeCho, startYCho4)
	setScrollFactor(spritechoco1 .. '8', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '9', spritechoco1, startXCho2, startYCho5)
	setScrollFactor(spritechoco1 .. '9', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '10', spritechoco1, startXCho2 - sizeCho, startYCho5)
	setScrollFactor(spritechoco1 .. '10', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '11', spritechoco1, startXCho2, startYCho6)
	setScrollFactor(spritechoco1 .. '11', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '12', spritechoco1, startXCho2 - sizeCho, startYCho6)
	setScrollFactor(spritechoco1 .. '12', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '13', spritechoco1, startXCho2, startYCho7)
	setScrollFactor(spritechoco1 .. '13', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '14', spritechoco1, startXCho2 - sizeCho, startYCho7)
	setScrollFactor(spritechoco1 .. '14', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '15', spritechoco1, startXCho2, startYCho8)
	setScrollFactor(spritechoco1 .. '15', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '16', spritechoco1, startXCho2 - sizeCho, startYCho8)
	setScrollFactor(spritechoco1 .. '16', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '17', spritechoco1, startXCho2, startYCho9)
	setScrollFactor(spritechoco1 .. '17', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '18', spritechoco1, startXCho2 - sizeCho, startYCho9)
	setScrollFactor(spritechoco1 .. '18', 1, 1.8);

	makeAnimatedLuaSprite(spritechoco1 .. '19', spritechoco1, startXCho2, startYCho10)
	setScrollFactor(spritechoco1 .. '19', 1, 1.8);
	makeAnimatedLuaSprite(spritechoco1 .. '20', spritechoco1, startXCho2 - sizeCho, startYCho10)
	setScrollFactor(spritechoco1 .. '20', 1, 1.8);


	makeLuaSprite(spritespeed .. '1speed', spritespeed, startX2, startY2)
	makeLuaSprite(spritespeed .. '2speed', spritespeed, startX2 + size, startY2)
	scaleObject(spritespeed .. '1', 1, 1);
	scaleObject(spritespeed .. '2', 1, 1);
	setScrollFactor(spritespeed .. '1speed', 1, 0.2);
	setScrollFactor(spritespeed .. '2speed', 1, 0.2);

	makeLuaSprite('back', 'TADC/fondo', -1650, -800); --Fondo
	setScrollFactor('back', 0.2, 2.5);
	makeLuaSprite('back2', 'TADC/fondoblanco', -1650, -900); --FondoBlanco
	setScrollFactor('back2', 0.2, 2.5);
	scaleObject('back2', 2, 2);

	makeLuaSprite('camion', 'TADC/gangleyippee', -2850, 130); --Camion
	makeLuaSprite('camionmalo', 'TADC/Camionazo', -3250, 130); --Camion2
	makeLuaSprite('mufla', 'TADC/mufla', -2850, 130); --Camion
	scaleObject('camion', 1.5, 1.5);
	scaleObject('camionmalo', 1.5, 1.5);
	scaleObject('mufla', 1.5, 1.5);

	makeAnimatedLuaSprite('Gangle', 'TADC/Gangle', -2850, 155);
	scaleObject('Gangle', 1.5, 1.5);

	makeAnimatedLuaSprite('Max', 'TADC/Max', -3270, 100);
	--scaleObject('Max', 0.67, 0.67);

	makeAnimatedLuaSprite('Gominoso', 'TADC/Gominoso', -2150, 0);
	makeAnimatedLuaSprite('Ragatha', 'TADC/Ragatha', -1550, -230);
	makeAnimatedLuaSprite('Poronma', 'TADC/PomniYoTeElijo', -1950, 230);

	makeAnimatedLuaSprite('SUGARCOAT', 'TADC/PIZZATOWER', -4950, 0); --IM NOT GOING TO SUGARCOAT IT


	makeAnimatedLuaSprite('tv_effect', 'TADC/tv_effect', -20, 0);
	scaleObject('tv_effect', 1.1, 1);
	setObjectCamera('tv_effect', 'hud')
	addLuaSprite('tv_effect', true)
	addAnimationByPrefix('tv_effect', 'apagar', 'apagar', 24, false);
	addAnimationByPrefix('tv_effect', 'stop', 'stop', 0, true);
	playAnim('tv_effect', 'apagar', true)
	setProperty('tv_effect.alpha', 0);


	makeLuaSprite('CamionFinal', 'TADC/CamionFinal', -1850, 200); ---1850-1695
	--makeAnimatedLuaSprite('Chocolatelake', 'TADC/Chocolatelake', -2500, -500);
	--setProperty('Chocolatelake.antialiasing', true); 
	--scaleObject('Chocolatelake', 5.5, 5.5);
	makeAnimatedLuaSprite('GangleFinal', 'TADC/GangleFinal', -1870, 200); ---1870
	makeAnimatedLuaSprite('JaxFinal', 'TADC/JaxFinal', -1870, 200); ---1870-1715
	scaleObject('CamionFinal', scalefinaltruck, scalefinaltruck); --0.8
	scaleObject('GangleFinal', scalefinaltruck, scalefinaltruck);
	scaleObject('JaxFinal', scalefinaltruck, scalefinaltruck);



	--setScrollFactor('Mountains', 0.7, 0.8);
	--scaleObject('back', 2.1, 2.1)
	--scaleObject('Mountains', 1.1, 1.1)
	--scaleObject('Floor', 1.2, 1.5)





	--setProperty('Floor2.flipX', true)

	addLuaSprite('back', back);

	if not lowQuality then
		addLuaSprite(spritespeed .. '1speed', false)
		addLuaSprite(spritespeed .. '2speed', false)
		addLuaSprite(spritecutscene .. '1', true) --proto no olvides cambiar esto a false pendejo
		addLuaSprite(spritecutscene .. '2', true) --olvidalo poto del pasado, eso se ve feo hijuefruta
		setProperty(spritecutscene .. '1.alpha', 0);
		setProperty(spritecutscene .. '2.alpha', 0);
		--addLuaSprite('Mountains', Mountains);
	end

	addLuaSprite(sprite .. '1', false)
	addLuaSprite(sprite .. '2', false)

	addLuaSprite(spritechoco1 .. '1', true)
	addLuaSprite(spritechoco1 .. '2', true)
	addLuaSprite(spritechoco1 .. '3', true)
	addLuaSprite(spritechoco1 .. '4', true)
	addLuaSprite(spritechoco1 .. '5', true)
	addLuaSprite(spritechoco1 .. '6', true)
	addLuaSprite(spritechoco1 .. '7', true)
	addLuaSprite(spritechoco1 .. '8', true)
	addLuaSprite(spritechoco1 .. '9', true)
	addLuaSprite(spritechoco1 .. '10', true)
	addLuaSprite(spritechoco1 .. '11', true)
	addLuaSprite(spritechoco1 .. '12', true)
	addLuaSprite(spritechoco1 .. '13', true)
	addLuaSprite(spritechoco1 .. '14', true)
	addLuaSprite(spritechoco1 .. '15', true)
	addLuaSprite(spritechoco1 .. '16', true)
	addLuaSprite(spritechoco1 .. '17', true)
	addLuaSprite(spritechoco1 .. '18', true)
	addLuaSprite(spritechoco1 .. '19', true)
	addLuaSprite(spritechoco1 .. '20', true)
	addAnimationByPrefix(spritechoco1 .. '1', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '2', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '3', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '4', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '5', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '6', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '7', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '8', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '9', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '10', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '11', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '12', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '13', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '14', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '15', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '16', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '17', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '18', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '19', 'CapiCharco', 'Chocolatozo', 24, true);
	addAnimationByPrefix(spritechoco1 .. '20', 'CapiCharco', 'Chocolatozo', 24, true);
	playAnim(spritechoco1 .. '1', 'CapiCharco', true)
	playAnim(spritechoco1 .. '2', 'CapiCharco', true)
	playAnim(spritechoco1 .. '3', 'CapiCharco', true)
	playAnim(spritechoco1 .. '4', 'CapiCharco', true)
	playAnim(spritechoco1 .. '5', 'CapiCharco', true)
	playAnim(spritechoco1 .. '6', 'CapiCharco', true)
	playAnim(spritechoco1 .. '7', 'CapiCharco', true)
	playAnim(spritechoco1 .. '8', 'CapiCharco', true)
	playAnim(spritechoco1 .. '9', 'CapiCharco', true)
	playAnim(spritechoco1 .. '10', 'CapiCharco', true)
	playAnim(spritechoco1 .. '11', 'CapiCharco', true)
	playAnim(spritechoco1 .. '12', 'CapiCharco', true)
	playAnim(spritechoco1 .. '13', 'CapiCharco', true)
	playAnim(spritechoco1 .. '14', 'CapiCharco', true)
	playAnim(spritechoco1 .. '15', 'CapiCharco', true)
	playAnim(spritechoco1 .. '16', 'CapiCharco', true)
	playAnim(spritechoco1 .. '17', 'CapiCharco', true)
	playAnim(spritechoco1 .. '18', 'CapiCharco', true)
	playAnim(spritechoco1 .. '19', 'CapiCharco', true)
	playAnim(spritechoco1 .. '20', 'CapiCharco', true)


	addLuaSprite('back2', back2);
	setProperty('back2.alpha', 1);

	addLuaSprite('Gangle', Gangle);
	addAnimationByPrefix('Gangle', 'loop', 'Idle', 24, false);
	playAnim('Gangle', 'loop', true)

	addLuaSprite('camion', camion);

	if not lowQuality then
		addLuaSprite('mufla', true);
	end


	addLuaSprite('Chocolatelake', true);
	addAnimationByPrefix('Chocolatelake', 'chocolate', 'chocolate', 15, false);
	--playAnim('Chocolatelake', 'chocolate', true)

	addLuaSprite('CamionFinal', true);

	addLuaSprite('GangleFinal', true);
	addLuaSprite('JaxFinal', true);
	addAnimationByPrefix('GangleFinal', 'GangleMyBeloved', 'GangleMyBeloved', 24, false);
	addAnimationByPrefix('JaxFinal', 'TeOdioGangle', 'TeOdioGangle', 24, false);
	--playAnim('GangleFinal', 'GangleMyBeloved', true)


	addLuaSprite('camionmalo', true);

	addLuaSprite('Max', true);
	addAnimationByPrefix('Max', 'loop2', 'Idle', 24, false);
	addAnimationByPrefix('Max', 'fuckingdies', 'adios', 24, false);
	addAnimationByPrefix('Max', 'stop', 'stop', 0, true);
	addAnimationByPrefix('Max', 'altA', 'altA', 24, false);
	addAnimationByPrefix('Max', 'altB', 'altB', 24, false);
	playAnim('Max', 'loop2', true)

	if not lowQuality then
		addLuaSprite('SUGARCOAT', true);
		addAnimationByPrefix('SUGARCOAT', 'TAUNTA', 'TauntA', 12, false);
		addAnimationByPrefix('SUGARCOAT', 'TAUNTB', 'TauntB', 12, false);
		addAnimationByPrefix('SUGARCOAT', 'TAUNTC', 'TauntC', 12, false);
		addAnimationByPrefix('SUGARCOAT', 'TAUNTD', 'TauntD', 12, false);
	end

	addLuaSprite('Gominoso', true); --cutscene1
	addLuaSprite('Ragatha', true);
	addLuaSprite('Poronma', true);
	addAnimationByPrefix('Gominoso', 'ready', 'Ready', 24, true);
	addAnimationByPrefix('Gominoso', 'set', 'Go', 24, false);
	addAnimationByPrefix('Gominoso', 'go', 'GoEstatico', 1, true);
	addAnimationByPrefix('Ragatha', 'doll', 'Jax0001', 0, true);
	addAnimationByPrefix('Ragatha', 'JAX', 'Jax', 24, false);
	addAnimationByPrefix('Poronma', 'stop', 'VuelaEstatico', 1, true);
	addAnimationByPrefix('Poronma', 'vuelavuela', 'Vuela', 24, false);
	addAnimationByPrefix('Poronma', 'pausa', 'Volo', 1, true);
	playAnim('Gominoso', 'ready', true)
	playAnim('Ragatha', 'doll', true)
	playAnim('Poronma', 'stop', true)
	setProperty('Gominoso.alpha', 0);
	setProperty('Ragatha.alpha', 0);
	setProperty('Poronma.alpha', 0);
	setProperty('CamionFinal.alpha', 0);
	setProperty('Chocolatelake.alpha', 0);
	setProperty('JaxFinal.alpha', 0);
	setProperty('GangleFinal.alpha', 0);
	setProperty('Gominoso.x', -3150);
	setProperty('Gominoso.y', 1000); --0
	setProperty('Ragatha.x', 950);
	setProperty('Poronma.x', -1950);
	setProperty('Poronma.y', 1000); --230

	--setProperty('DLCBackgrounds/PROTOBACKGROUND/clouds.alpha', 0.5)
	--setProperty('DLCBackgrounds/PROTOBACKGROUND/clouds.alpha', 0.5)
	scrollA()
	scrollA2()
	scrollC()
	scrollD()

	--addLuaSprite('Floor', Floor);

	--addAnimationByPrefix('Sky', 'loop', 'emmaexe no', 24, true);


	setObjectOrder('mufla', getObjectOrder('dadGroup')+14)
	setObjectOrder('dadGroup', getObjectOrder('dadGroup')+15) --puts gumigou in top layer
	setObjectOrder('gfGroup', getObjectOrder('dadGroup')+15)

	setObjectOrder(spritecutscene .. '1', getObjectOrder('dadGroup')+26) --cutscene de gumiguoui
	setObjectOrder(spritecutscene .. '2', getObjectOrder('dadGroup')+26)

	setObjectOrder('Gominoso', getObjectOrder('dadGroup')+28)
	setObjectOrder('Ragatha', getObjectOrder('dadGroup')+28)
	setObjectOrder('Poronma', getObjectOrder('dadGroup')+28)
	setObjectOrder('SUGARCOAT', getObjectOrder('dadGroup')+18)
	--setObjectOrder('Chocolatelake', getObjectOrder('dadGroup')+18)

	setObjectOrder(spritechoco1 .. '20', getObjectOrder('dadGroup')+18)
	setObjectOrder(spritechoco1 .. '19', getObjectOrder('dadGroup')+19)
	setObjectOrder(spritechoco1 .. '18', getObjectOrder('dadGroup')+20)
	setObjectOrder(spritechoco1 .. '17', getObjectOrder('dadGroup')+21)
	setObjectOrder(spritechoco1 .. '16', getObjectOrder('dadGroup')+22)
	setObjectOrder(spritechoco1 .. '15', getObjectOrder('dadGroup')+23)
	setObjectOrder(spritechoco1 .. '14', getObjectOrder('dadGroup')+24)
	setObjectOrder(spritechoco1 .. '13', getObjectOrder('dadGroup')+25)
	setObjectOrder(spritechoco1 .. '12', getObjectOrder('dadGroup')+26)
	setObjectOrder(spritechoco1 .. '11', getObjectOrder('dadGroup')+27)
	setObjectOrder(spritechoco1 .. '10', getObjectOrder('dadGroup')+28)
	setObjectOrder(spritechoco1 .. '9', getObjectOrder('dadGroup')+29)
	setObjectOrder(spritechoco1 .. '8', getObjectOrder('dadGroup')+30)
	setObjectOrder(spritechoco1 .. '7', getObjectOrder('dadGroup')+31)
	setObjectOrder(spritechoco1 .. '6', getObjectOrder('dadGroup')+32)
	setObjectOrder(spritechoco1 .. '5', getObjectOrder('dadGroup')+33)
	setObjectOrder(spritechoco1 .. '4', getObjectOrder('dadGroup')+34)
	setObjectOrder(spritechoco1 .. '3', getObjectOrder('dadGroup')+35)
	setObjectOrder(spritechoco1 .. '2', getObjectOrder('dadGroup')+36)
	setObjectOrder(spritechoco1 .. '1', getObjectOrder('dadGroup')+37)

	setObjectOrder('CamionFinal', getObjectOrder('dadGroup')+39)
	setObjectOrder('JaxFinal', getObjectOrder('dadGroup')+40)
	setObjectOrder('GangleFinal', getObjectOrder('dadGroup')+40)


	--scaleObject('girlfriend', 0.5, 0.5);
	
end



function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)

--debugPrint("Scroll A se ejecuto correctamente :D");
end

function scrollC()
doTweenX(spritecutscene .. '1move',spritecutscene .. '1', startX3 - size2, duration3)
doTweenX(spritecutscene .. '2move',spritecutscene .. '2', startX3, duration3)

--debugPrint("Scroll C se ejecuto correctamente :D");
end


function scrollD()
doTweenX(spritechoco1 .. '1move',spritechoco1 .. '1', startXCho1 - sizeCho, duration3)
doTweenX(spritechoco1 .. '2move',spritechoco1 .. '2', startXCho1, duration3)
doTweenX(spritechoco1 .. '3move',spritechoco1 .. '3', startXCho2 + sizeCho, duration3)
doTweenX(spritechoco1 .. '4move',spritechoco1 .. '4', startXCho2, duration3)

doTweenX(spritechoco1 .. '12move',spritechoco1 .. '5', startXCho1 - sizeCho, duration3)
doTweenX(spritechoco1 .. '22move',spritechoco1 .. '6', startXCho1, duration3)
doTweenX(spritechoco1 .. '32move',spritechoco1 .. '7', startXCho2 + sizeCho, duration3)
doTweenX(spritechoco1 .. '42move',spritechoco1 .. '8', startXCho2, duration3)

doTweenX(spritechoco1 .. '13move',spritechoco1 .. '9', startXCho1 - sizeCho, duration3)
doTweenX(spritechoco1 .. '23move',spritechoco1 .. '10', startXCho1, duration3)
doTweenX(spritechoco1 .. '33move',spritechoco1 .. '11', startXCho2 + sizeCho, duration3)
doTweenX(spritechoco1 .. '43move',spritechoco1 .. '12', startXCho2, duration3)

doTweenX(spritechoco1 .. '14move',spritechoco1 .. '13', startXCho1 - sizeCho, duration3)
doTweenX(spritechoco1 .. '24move',spritechoco1 .. '14', startXCho1, duration3)
doTweenX(spritechoco1 .. '34move',spritechoco1 .. '15', startXCho2 + sizeCho, duration3)
doTweenX(spritechoco1 .. '44move',spritechoco1 .. '16', startXCho2, duration3)

doTweenX(spritechoco1 .. '15move',spritechoco1 .. '17', startXCho1 - sizeCho, duration3)
doTweenX(spritechoco1 .. '25move',spritechoco1 .. '18', startXCho1, duration3)
doTweenX(spritechoco1 .. '35move',spritechoco1 .. '19', startXCho2 + sizeCho, duration3)
doTweenX(spritechoco1 .. '45move',spritechoco1 .. '20', startXCho2, duration3)


--debugPrint("Scroll D se ejecuto correctamente :D");
end



function scrollA2()
doTweenX(spritespeed .. '1moveSpeed',spritespeed .. '1speed', startX2 - size, duration2)
doTweenX(spritespeed .. '2moveSpeed',spritespeed .. '2speed', startX2, duration2)

--debugPrint("Scroll A2 se ejecuto correctamente :D");
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end
if tag == (spritecutscene .. '2move') then
scrollC2()
end
if tag == (spritechoco1 .. '2move') then
scrollD2()
end

if tag == (spritespeed .. '2moveSpeed') then
scrollB2()
--debugPrint("STEST1");
end
if tag == (sprite .. '2move2Speed') then
scrollA2()
--debugPrint("STEST2");
end
if tag == (spritecutscene .. '2move2') then
scrollC()
--debugPrint("STEST3");
end
if tag == (spritechoco1 .. '2move2') then
scrollD()
--debugPrint("STEST4");
end

end

function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)

--debugPrint("Scroll B se ejecuto correctamente :D");
end

function scrollC2()
doTweenX(spritecutscene .. '1move2',spritecutscene .. '1', startX3, 0.001)
doTweenX(spritecutscene .. '2move2',spritecutscene .. '2', startX3 + size2, 0.001)

--debugPrint("Scroll C2 se ejecuto correctamente :D");
end


function scrollD2()
doTweenX(spritechoco1 .. '1move2',spritechoco1 .. '1', startXCho1, 0.001)
doTweenX(spritechoco1 .. '2move2',spritechoco1 .. '2', startXCho1 + sizeCho, 0.001)
doTweenX(spritechoco1 .. '3move2',spritechoco1 .. '3', startXCho2, 0.001)
doTweenX(spritechoco1 .. '4move2',spritechoco1 .. '4', startXCho2 - sizeCho, 0.001)

doTweenX(spritechoco1 .. '12move2',spritechoco1 .. '5', startXCho1, 0.001)
doTweenX(spritechoco1 .. '22move2',spritechoco1 .. '6', startXCho1 + sizeCho, 0.001)
doTweenX(spritechoco1 .. '32move2',spritechoco1 .. '7', startXCho2, 0.001)
doTweenX(spritechoco1 .. '42move2',spritechoco1 .. '8', startXCho2 - sizeCho, 0.001)

doTweenX(spritechoco1 .. '13move2',spritechoco1 .. '9', startXCho1, 0.001)
doTweenX(spritechoco1 .. '23move2',spritechoco1 .. '10', startXCho1 + sizeCho, 0.001)
doTweenX(spritechoco1 .. '33move2',spritechoco1 .. '11', startXCho2, 0.001)
doTweenX(spritechoco1 .. '43move2',spritechoco1 .. '12', startXCho2 - sizeCho, 0.001)

doTweenX(spritechoco1 .. '14move2',spritechoco1 .. '13', startXCho1, 0.001)
doTweenX(spritechoco1 .. '24move2',spritechoco1 .. '14', startXCho1 + sizeCho, 0.001)
doTweenX(spritechoco1 .. '34move2',spritechoco1 .. '15', startXCho2, 0.001)
doTweenX(spritechoco1 .. '44move2',spritechoco1 .. '16', startXCho2 - sizeCho, 0.001)

doTweenX(spritechoco1 .. '15move2',spritechoco1 .. '17', startXCho1, 0.001)
doTweenX(spritechoco1 .. '25move2',spritechoco1 .. '18', startXCho1 + sizeCho, 0.001)
doTweenX(spritechoco1 .. '35move2',spritechoco1 .. '19', startXCho2, 0.001)
doTweenX(spritechoco1 .. '45move2',spritechoco1 .. '20', startXCho2 - sizeCho, 0.001)

--debugPrint("Scroll D2 se ejecuto correctamente :D");
end


function scrollB2()
doTweenX(sprite .. '1move2Speed',spritespeed .. '1speed', startX2, 0.001)
doTweenX(sprite .. '2move2Speed',spritespeed .. '2speed', startX2 + size, 0.001)

--debugPrint("Scroll B2 se ejecuto correctamente :D");
end