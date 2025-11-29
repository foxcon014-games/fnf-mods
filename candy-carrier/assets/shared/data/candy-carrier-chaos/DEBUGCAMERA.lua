function onUpdate(elapsed)

	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.M') then

		triggerEvent('Set Cam Zoom',0.4,0)

	end

	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.N') then

		triggerEvent('Set Cam Zoom',0.1,0)

	end

end

--Credit meeeeee EpicProto, yeeey!!!!