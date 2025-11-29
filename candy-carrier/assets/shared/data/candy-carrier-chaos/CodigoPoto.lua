sprite = 'TADC/colinas'
spritespeed = 'TADC/nubes'
cameraequis = 2000
FUNVALUE = 0
CoatAngle = 0
BoingBoing = 0
spritechoco1 = 'TADC/Chocolatozo'

ESELNEGROJOSE = '0xFF000000'
THISISMAKINGDOMCOM = '0x5555FF55'
Yogurt = '0xFFFFFFFF'
ESELNEGROJOSEEND = '0xFF555555'
sumselcoeor = 0xFFFFFF00 --FC935F HIJOS DE FRUTA ME TOMO HORA Y MEDIA HACER ESTE CODIGO, gracias mc por tu ayuda visual que mi pantalla estaba rota!
detime = 0.5
detime2 = 0.00001

function onCreate()

setProperty('cameraSpeed', 999999)


triggerEvent('Camera Follow Pos',-1000,450)
setProperty('boyfriend.x', 2000);
setProperty('boyfriend.visible', false);
--setProperty('dad.visible', false);
--setProperty('dad.alpha', 0);
doTweenAlpha('Gumigodiessad', 'dad', 0, 1, 'linear');
--doTweenAlpha('Pomnareal', 'gf', 0, 1, 'linear');
setPropertyFromClass('openfl.Lib', 'application.window.title', 'CANDY CARRIER CHAOS - LazyWork Team.');


setProperty(spritechoco1 .. '1.alpha', 0);
setProperty(spritechoco1 .. '2.alpha', 0);
setProperty(spritechoco1 .. '3.alpha', 0);
setProperty(spritechoco1 .. '4.alpha', 0);
setProperty(spritechoco1 .. '5.alpha', 0);
setProperty(spritechoco1 .. '6.alpha', 0);
setProperty(spritechoco1 .. '7.alpha', 0);
setProperty(spritechoco1 .. '8.alpha', 0);
setProperty(spritechoco1 .. '9.alpha', 0);
setProperty(spritechoco1 .. '10.alpha', 0);
setProperty(spritechoco1 .. '11.alpha', 0);
setProperty(spritechoco1 .. '12.alpha', 0);
setProperty(spritechoco1 .. '13.alpha', 0);
setProperty(spritechoco1 .. '14.alpha', 0);
setProperty(spritechoco1 .. '15.alpha', 0);
setProperty(spritechoco1 .. '16.alpha', 0);
setProperty(spritechoco1 .. '17.alpha', 0);
setProperty(spritechoco1 .. '18.alpha', 0);
setProperty(spritechoco1 .. '19.alpha', 0);
setProperty(spritechoco1 .. '20.alpha', 0);

setProperty('showRating', false);
setProperty('showComboNum', false);

doTweenColor('boyfriend.ColorTween', 'boyfriend', ESELNEGROJOSE, detime2, 'quadInOut')
--doTweenColor('dad.ColorTween', 'dad', ESELNEGROJOSE, detime2, 'quadInOut')
--doTweenColor('gf.ColorTween', 'gf', ESELNEGROJOSE, detime2, 'quadInOut')

doTweenColor('camion.ColorTween', 'camion', ESELNEGROJOSE, detime2, 'quadInOut')
doTweenColor('mufla.ColorTween', 'mufla', ESELNEGROJOSE, detime2, 'quadInOut')
doTweenColor('Gangle.ColorTween', 'Gangle', ESELNEGROJOSE, detime2, 'quadInOut')
doTweenColor('camionmalo.ColorTween', 'camionmalo', ESELNEGROJOSE, detime2, 'quadInOut')
doTweenColor('Max.ColorTween', 'Max', ESELNEGROJOSE, detime2, 'quadInOut')


doTweenColor('sprite1.ColorTween', sprite .. '1', THISISMAKINGDOMCOM, detime2, 'quadInOut')
doTweenColor('sprite2.ColorTween', sprite .. '2', THISISMAKINGDOMCOM, detime2, 'quadInOut')
doTweenColor('spritespeed1.ColorTween', spritespeed .. '1', THISISMAKINGDOMCOM, detime2, 'quadInOut')
doTweenColor('spritespeed2.ColorTween', spritespeed .. '2', THISISMAKINGDOMCOM, detime2, 'quadInOut')

end

function onStepHit()

	if curBeat > 2 then
		if curStep % 4 == 0 then
			--doTweenY('bfScaleTweenY', 'boyfriend.scale', 1.05, 0.1, 'elasticInOut')
			--doTweenY('gfY', 'gf', 220, 0.001, 'elasticInOut')
			doTweenY('dadY', 'dad', 170, 0.001, 'elasticInOut')

			if curStep < 2148 then
				doTweenY('camionazo', 'camion', 150, 0.001, 'elasticInOut')
				doTweenY('muflazo', 'mufla', 150, 0.001, 'elasticInOut')
				doTweenY('Gangelazo', 'Gangle', 150, 0.001, 'elasticInOut')
				doTweenY('bfY', 'boyfriend', 0, 0.001, 'elasticInOut')
			end
			doTweenY('Camionenemigo', 'camionmalo', 150, 0.001, 'elasticInOut')
			doTweenY('Maxazo', 'Max', 120, 0.001, 'elasticInOut')
			doTweenY('gfY', 'gf', 525, 0.001, 'elasticInOut')
			--playAnim('Gangle', 'loop', true)
		end
		if curStep % 4 == 2 then
			--doTweenY('bfScaleTweenY', 'boyfriend.scale', 1, 0.1, 'linear')
			--doTweenY('gfY', 'gf', 200, 0.1, 'linear')
			doTweenY('dadY', 'dad', 150, 0.1, 'linear')

			if curStep < 2148 then
				doTweenY('camionazo', 'camion', 130, 0.1, 'linear')
				doTweenY('muflazo', 'mufla', 130, 0.1, 'linear')
				doTweenY('Gangelazo', 'Gangle', 130, 0.1, 'linear')
				doTweenY('bfY', 'boyfriend', -20, 0.1, 'linear')
			end
			doTweenY('Camionenemigo', 'camionmalo', 130, 0.1, 'linear')
			doTweenY('Maxazo', 'Max', 100, 0.1, 'linear')
			doTweenY('gfY', 'gf', 505, 0.1, 'linear')
		end

		if curStep % 8 == 0 then
			playAnim('Gangle', 'loop', true)
			if curStep < 1756 then
				if curStep > 1520 then
					playAnim('Max', 'altB', true)
				end
				if curStep < 1520 then
					playAnim('Max', 'loop2', true)
				end
			end
		end
		if curStep % 8 == 1 then
			if curStep < 2016 then
				if curStep > 1840 then
					TAUNTMAX()
				end
			end
		end
		if curStep % 8 == 4 then

		end
		if curStep % 8 == 5 then
			if curStep < 2016 then
				if curStep > 1840 then
					TAUNTMAX()
				end
			end
		end

		if curStep % 32 == 0 then
			doTweenX('CamionenemigoX', 'camionmalo', -3250, 3, 'elasticInOut')
			doTweenX('MaxazoX', 'Max', -3270, 3, 'elasticInOut')
			doTweenX('gfX', 'gf', -2215, 3, 'elasticInOut')

			doTweenX('camionazoX', 'camion', -2810, 3.1, 'elasticOut')
			doTweenX('muflazoX', 'mufla', -2810, 3.1, 'elasticOut')
			doTweenX('GangelazoX', 'Gangle', -2810, 3.1, 'elasticOut')
			doTweenX('bfX', 'boyfriend', -1630, 3.1, 'elasticOut')


		end
		if curStep % 32 == 8 then

		end
		if curStep % 32 == 12 then

		end
		if curStep % 32 == 16 then
			doTweenX('CamionenemigoX', 'camionmalo', -3210, 3.1, 'elasticOut')
			doTweenX('MaxazoX', 'Max', -3230, 3.1, 'elasticOut')
			doTweenX('gfX', 'gf', -2175, 3.1, 'elasticOut')

			doTweenX('camionazoX', 'camion', -2850, 3, 'elasticInOut')
			doTweenX('muflazoX', 'mufla', -2850, 3, 'elasticInOut')
			doTweenX('GangelazoX', 'Gangle', -2850, 3, 'elasticInOut')
			doTweenX('bfX', 'boyfriend', -1670, 3, 'elasticInOut')

		end
		if curStep % 32 == 24 then

		end
		if curStep % 32 == 28 then

		end
		if curStep % 4 == 0 then
			if curStep > 2170 then
				if curStep < 2225 then
					cameraequis = cameraequis + 0.025
					setProperty("defaultCamZoom",cameraequis)
					--setProperty("camGame.zoom",cameraequis)
					doTweenZoom('camthingf','camGame',cameraequis,0.5,'sineInOut')
				end
			end
		end
	end
	if curBeat == 0 then
		setProperty('boyfriend.visible', true);
		setProperty('boyfriend.x', -1670);
		setProperty('cameraSpeed', 3)
		doTweenAlpha('Pomnareal', 'gf', 0, 1, 'linear');
	end

	if curBeat == 2 then
		setProperty('dad.visible', false);
		doTweenAlpha('FondoCutscene', 'TADC/cutscenefondo1OLD1', 0, 0.1, 'linear');
		doTweenAlpha('FondoCutscene2', 'TADC/cutscenefondo1OLD2', 0, 0.1, 'linear');
		doTweenAngle('gumigaoangle', 'dad', 90, 1, 'cubeIn')
	end

	if curStep < 132 then
		if curStep > 50 then
		if curStep < 100 then
 			triggerEvent('Camera Follow Pos',cameraequis,450)
			cameraequis = cameraequis - 50
		end
		end
		if curStep > 100 then
		if curStep < 110 then
 			triggerEvent('Camera Follow Pos',cameraequis,450)
			cameraequis = cameraequis - 30
		end
		end
		if curStep > 110 then
		if curStep < 120 then
 			triggerEvent('Camera Follow Pos',cameraequis,450)
			cameraequis = cameraequis - 20
		end
		end
		if curStep > 120 then
		if curStep < 130 then
 			triggerEvent('Camera Follow Pos',cameraequis,450)
			cameraequis = cameraequis - 10
		end
		end
	end

	--if curStep < 132 then

    if curStep == 255 then
       doTweenAlpha('fonditoblancotewen', 'back2', 0, detime, 'elasticInOut')

       doTweenColor('boyfriend.ColorTween', 'boyfriend', Yogurt, detime, 'quadInOut')
       --doTweenColor('dad.ColorTween', 'dad', Yogurt, detime, 'quadInOut')
       --doTweenColor('gf.ColorTween', 'gf', Yogurt, detime, 'quadInOut')

       doTweenColor('camion.ColorTween', 'camion', Yogurt, detime, 'quadInOut')
       doTweenColor('mufla.ColorTween', 'mufla', Yogurt, detime, 'quadInOut')
       doTweenColor('Gangle.ColorTween', 'Gangle', Yogurt, detime, 'quadInOut')
       doTweenColor('camionmalo.ColorTween', 'camionmalo', Yogurt, detime, 'quadInOut')
       doTweenColor('Max.ColorTween', 'Max', Yogurt, detime, 'quadInOut')

       doTweenColor('sprite1.ColorTween', sprite .. '1', Yogurt, detime, 'quadInOut')
       doTweenColor('sprite2.ColorTween', sprite .. '2', Yogurt, detime, 'quadInOut')
       doTweenColor('spritespeed1.ColorTween', spritespeed .. '1', Yogurt, detime, 'quadInOut')
       doTweenColor('spritespeed2.ColorTween', spritespeed .. '2', Yogurt, detime, 'quadInOut')

       setProperty('dad.visible', true);
    end

    if curStep == 1440 then
       --setProperty(spritecutscene .. '1.alpha', 0.5);
       --setProperty(spritecutscene .. '2.alpha', 0.5);

       doTweenAlpha('FondoCutscene', 'TADC/cutscenefondonew1', 1, 1, 'linear');
       doTweenAlpha('FondoCutscene2', 'TADC/cutscenefondonew2', 1, 1, 'linear');
       doTweenAngle('gumigulo', 'Gominoso', -90, 0.1, 'cubeIn');
       doTweenAngle('gumiRgulo', 'Ragatha', 45, 0.1, 'cubeIn');
       doTweenAngle('gumiPgulo', 'Poronma', -15, 0.1, 'cubeIn');
    end

    if curStep == 1451 then
       doTweenAlpha('GominosoCutsceneA', 'Gominoso', 1, 0.5, 'cubeOut');
       doTweenX('GominosoCutscene', 'Gominoso', -2150, 1, 'cubeOut')
       doTweenY('GominosoCutsceneY', 'Gominoso', 0, 1.5, 'cubeOut')
       doTweenAngle('gumigulo', 'Gominoso', 0, 1, 'cubeOut')
    end

    if curStep == 1461 then
       doTweenAlpha('PomniCutsceneA', 'Poronma', 1, 0.5, 'cubeOut');
       doTweenX('PomniCutscene', 'Poronma', -1950, 2.5, 'elasticInOut')
       doTweenY('PomniCutsceneY', 'Poronma', 230, 2.5, 'cubeOut')
       doTweenAngle('gumiPgulo', 'Poronma', 0, 2, 'cubeOut');
    end

    if curStep == 1481 then
	playAnim('Gominoso', 'set', true)
	doTweenY('GominosoCutsceneY', 'Gominoso', 100, 0.3, 'cubeIn')
      doTweenX('GominosoCutscene', 'Gominoso', -2160, 0.3, 'cubeIn')
      doTweenAngle('gumigulo', 'Gominoso', 5, 0.3, 'cubeIn')
    end

    if curStep == 1487 then
	playAnim('Poronma', 'vuelavuela', true)
	doTweenAngle('gumiPgulo', 'Poronma', 10, 0.3, 'cubeIn');
	doTweenX('PomniCutscene', 'Poronma', -1990, 0.2, 'cubeIn')
      doTweenAlpha('RagaCutsceneA', 'Ragatha', 1, 0.1, 'cubeOut');
    end

    if curStep == 1488 then
      doTweenAlpha('Pomnareal', 'gf', 1, 1, 'linear');
    end

    if curStep == 1489 then
	playAnim('Gominoso', 'go', true)
      doTweenX('RagaCutscene', 'Ragatha', -1550, 0.5, 'cubeOut');
      doTweenY('RagaCutsceneY', 'Ragatha', -130, 0.5, 'cubeIn');
      doTweenAngle('gumiRgulo', 'Ragatha', 0, 1, 'cubeOut')
    end

    if curStep == 1492 then
	playAnim('Ragatha', 'JAX', true)
    end

    if curStep == 1494 then

    end

    if curStep == 1503 then
       doTweenAlpha(‘hudbyebye’, ‘camHUD’, 1, 0.2, ‘cubeOut’)
       doTweenAlpha('GominosoCutsceneA', 'Gominoso', 0, 0.1, 'cubeOut');
       doTweenAlpha('PomniCutsceneA', 'Poronma', 0, 0.1, 'cubeOut');
       doTweenAlpha('RagaCutsceneA', 'Ragatha', 0, 0.1, 'cubeOut');
       doTweenAlpha('FondoCutscene', 'TADC/cutscenefondonew1', 0, 0.1, 'linear');
       doTweenAlpha('FondoCutscene2', 'TADC/cutscenefondonew2', 0, 0.1, 'linear');
    end

    if curStep == 1512 then
       playAnim('Max', 'altA', true)
    end

    if curStep == 1760 then
       playAnim('Max', 'fuckingdies', true)
    end

    if curStep == 1768 then
       playAnim('Max', 'stop', true)
    end

    if curStep == 1836 then
       doTweenX('SUGARCOATCutscene', 'SUGARCOAT', -2860, 1.5, 'cubeOut');
       playAnim('SUGARCOAT', 'TAUNTA', true)
       playSound('Taunt', 0.3)
       if curStep < 2016 then
              if CoatAngle > 0 then
                     CoatAngle = CoatAngle - 2.5
              end
              if CoatAngle < 0 then
                     CoatAngle = CoatAngle + 2.5
              end
	 end
    end

    if curStep == 2016 then
       doTweenX('SUGARCOATCutscene', 'SUGARCOAT', -4860, 0.4, 'cubeOut');
       playAnim('SUGARCOAT', 'TAUNTA', true)
       playSound('Taunt', 0.3)
    end

    if curStep == 2025 then
       CoatAngle = 0
	 doTweenAngle('SugarCoatAngle', 'SUGARCOAT', CoatAngle, 0.2, 'cube')
       doTweenX('SUGARCOATCutscene', 'SUGARCOAT', -2860, 0.05, 'cubeOut');
       playSound('Taunt', 0.5)
       playAnim('SUGARCOAT', 'TAUNTC', true)
    end

    if curStep == 2029 then
       playSound('Taunt', 0.5)
       playAnim('SUGARCOAT', 'TAUNTD', true)
    end

    if curStep == 2031 then
       playSound('Taunt', 0.5)
       playAnim('SUGARCOAT', 'TAUNTA', true)
    end

    if curStep == 2032 then
       doTweenX('SUGARCOATCutscene', 'SUGARCOAT', -4860, 0.5, 'cubeOut');
    end

    if curStep == 2151 then
       doTweenAngle('camionazoAngle', 'camion', 50, 4.5, 'linearInOut')
       doTweenAngle('muflazoAngle', 'mufla', 50, 4.5, 'linearInOut')
       doTweenAngle('GangelazoAngle', 'Gangle', 50, 4.5, 'linearInOut')
       doTweenAngle('bfAngle', 'boyfriend', 50, 4.7, 'linearInOut')
    end

    if curStep == 2155 then -- 2148
       doTweenY('camionazo', 'camion', 1950, 1, 'linearInOut')
       doTweenY('muflazo', 'mufla', 1950, 1, 'linearInOut')
       doTweenY('Gangelazo', 'Gangle', 1950, 1, 'linearInOut')
       doTweenY('bfY', 'boyfriend', 1800, 1, 'linearInOut')
    end


    if curStep == 2167 then
       playAnim('JaxFinal', 'TeOdioGangle', true)
    end

    if curStep == 2170 then
       --playAnim('Chocolatelake', 'chocolate', true)
       playAnim('GangleFinal', 'GangleMyBeloved', true)
       cameraequis = 0.5

       doTweenAlpha(spritechoco1 .. '1fall', spritechoco1 .. '1', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '2fall', spritechoco1 .. '2', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '3fall', spritechoco1 .. '3', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '4fall', spritechoco1 .. '4', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '5fall', spritechoco1 .. '5', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '6fall', spritechoco1 .. '6', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '7fall', spritechoco1 .. '7', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '8fall', spritechoco1 .. '8', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '9fall', spritechoco1 .. '9', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '10fall', spritechoco1 .. '10', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '11fall', spritechoco1 .. '11', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '12fall', spritechoco1 .. '12', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '13fall', spritechoco1 .. '13', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '14fall', spritechoco1 .. '14', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '15fall', spritechoco1 .. '15', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '16fall', spritechoco1 .. '16', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '17fall', spritechoco1 .. '17', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '18fall', spritechoco1 .. '18', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '19fall', spritechoco1 .. '19', 1, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '20fall', spritechoco1 .. '20', 1, 0.2, 'cubeOut');

       doTweenAlpha('GangleFinalA', 'GangleFinal', 1, 0.2, 'cubeOut');
       doTweenAlpha('JaxFinalA', 'JaxFinal', 1, 0.2, 'cubeOut');
       doTweenAlpha('CamionFinalA', 'CamionFinal', 1, 0.2, 'cubeOut');

       --doTweenX('ChocolatelakeScaleTweenX', 'Chocolatelake.scale', 20, 10, 'linear');
       --doTweenY('ChocolatelakeScaleTweenY', 'Chocolatelake.scale', 20, 10, 'linear');

       doTweenX('CamionFinal-ScaleTweenX', 'CamionFinal.scale', 0.8, 3.5, 'sineInOut');
       doTweenY('CamionFinal-ScaleTweenY', 'CamionFinal.scale', 0.8, 3.5, 'sineInOut');
       doTweenX('JaxFinal-ScaleTweenX', 'JaxFinal.scale', 0.8, 3.5, 'sineInOut');
       doTweenY('JaxFinal-ScaleTweenY', 'JaxFinal.scale', 0.8, 3.5, 'sineInOut');
       doTweenX('GangleFinal-ScaleTweenX', 'GangleFinal.scale', 0.8, 3.5, 'sineInOut');
       doTweenY('GangleFinal-ScaleTweenY', 'GangleFinal.scale', 0.8, 3.5, 'sineInOut');

       doTweenY('JaxFinalENDD', 'JaxFinal', 50, 3.5, 'sineInOut')
       doTweenY('GangleFinalENDD', 'GangleFinal', 50, 3.5, 'sineInOut')
       doTweenY('CamionFinalENDD', 'CamionFinal', 50, 3.5, 'sineInOut')

       if curStep % 1 == 0 then
              triggerEvent('Set Cam Zoom',cameraequis,0)
              cameraequis = cameraequis + 0.05
              setProperty("defaultCamZoom",cameraequis)
              setProperty("camGame.zoom",cameraequis)
       end
    end

    if curStep == 2180 then
       doTweenColor('CamionFinal.ColorTween', 'CamionFinal', ESELNEGROJOSEEND, 4, 'linear')
       doTweenColor('JaxFinal.ColorTween', 'JaxFinal', ESELNEGROJOSEEND, 4, 'linear')
       doTweenColor('GangleFinal.ColorTween', 'GangleFinal', ESELNEGROJOSEEND, 4, 'linear')
       doTweenAlpha('fonditoblancotewen', 'back2', 1, detime, 'elasticInOut')

       doTweenAlpha('CamionmalooA', 'camionmalo', 0, 0.2, 'cubeOut');
       doTweenAlpha('MaxoA', 'Max', 0, 0.2, 'cubeOut');
       doTweenAlpha('gfoA', 'gf', 0, 0.2, 'cubeOut');
       doTweenAlpha('bfoA', 'bf', 0, 0.2, 'cubeOut');
       doTweenAlpha('camanooA', 'camion', 0, 0.2, 'cubeOut');
    end

    if curStep == 2231 then
       doTweenAlpha('ChocolatelakeA', 'Chocolatelake', 0, 0.2, 'cubeOut');
       doTweenAlpha('GangleFinalA', 'GangleFinal', 0, 0.2, 'cubeOut');
       doTweenAlpha('JaxFinalA', 'JaxFinal', 0, 0.2, 'cubeOut');
       doTweenAlpha('CamionFinalA', 'CamionFinal', 0, 0.2, 'cubeOut');

       doTweenAlpha(spritechoco1 .. '1fall', spritechoco1 .. '1', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '2fall', spritechoco1 .. '2', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '3fall', spritechoco1 .. '3', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '4fall', spritechoco1 .. '4', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '5fall', spritechoco1 .. '5', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '6fall', spritechoco1 .. '6', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '7fall', spritechoco1 .. '7', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '8fall', spritechoco1 .. '8', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '9fall', spritechoco1 .. '9', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '10fall', spritechoco1 .. '10', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '11fall', spritechoco1 .. '11', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '12fall', spritechoco1 .. '12', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '13fall', spritechoco1 .. '13', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '14fall', spritechoco1 .. '14', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '15fall', spritechoco1 .. '15', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '16fall', spritechoco1 .. '16', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '17fall', spritechoco1 .. '17', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '18fall', spritechoco1 .. '18', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '19fall', spritechoco1 .. '19', 0, 0.2, 'cubeOut');
       doTweenAlpha(spritechoco1 .. '20fall', spritechoco1 .. '20', 0, 0.2, 'cubeOut');
    end

    if curStep == 2253 then
       doTweenAlpha('tv_effectthingy', 'tv_effect', 1, 0.1, 'cubeOut');
    end

    if curStep == 2254 then
       playAnim('tv_effect', 'apagar', true)
    end

    if curStep == 2264 then
       playAnim('tv_effect', 'stop', true)
    end
end

function TAUNTMAX()
	--if FUNVALUE == 0 then
		--FUNVALUE = getRandomInt(1, 4, true)
	--else
	--if FUNVALUE > 0 then
		--if FUNVALUE == 1 then
			--FUNVALUE = getRandomInt(2, 4, true)
		--else
		--if FUNVALUE > 1 then
			--if FUNVALUE == 2 then
				--FUNVALUE = getRandomInt(3, 4, true)
			--else
			--if FUNVALUE > 2 then
				--if FUNVALUE == 3 then
					--FUNVALUE = getRandomInt(1, 2, true)
				--else
				--if FUNVALUE > 3 then
					--if FUNVALUE == 4 then
						--FUNVALUE = getRandomInt(1, 4, true)
					--end
				--end
			--end
		--end
	--end
	--end
	--end
	--end

	FUNVALUE = getRandomInt(1, 4, true)
	CoatAngle = getRandomInt(-15, 15, true)
	setProperty('SUGARCOAT.y', -100);
	doTweenAngle('SugarCoatAngle', 'SUGARCOAT', CoatAngle, 0.2, 'cubeOut')
	doTweenY('SugarCoatY', 'SUGARCOAT', BoingBoing, 0.3, 'cubeOut')


	if curStep < 2016 then
		if curStep > 1840 then
			if FUNVALUE == 1 then
				playAnim('SUGARCOAT', 'TAUNTA', true)
			end
			if FUNVALUE == 2 then
				playAnim('SUGARCOAT', 'TAUNTB', true)
			end
			if FUNVALUE == 3 then
				playAnim('SUGARCOAT', 'TAUNTC', true)
			end
			if FUNVALUE == 4 then
				playAnim('SUGARCOAT', 'TAUNTD', true)
			end
			playSound('Taunt', 0.5)
		end
	end
end