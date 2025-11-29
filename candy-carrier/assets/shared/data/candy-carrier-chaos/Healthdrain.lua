function opponentNoteHit()
	health = getProperty('health')
	--setProperty('showRating', false);
	--setProperty('showComboNum', false);
	if curStep < 1512 then
		if getProperty('health') > 0.05 then
			setProperty('health', health- 0.018);
		end
	end
	if curStep > 1512 then
		if curStep < 2032 then
			if getProperty('health') > 0.05 then
				setProperty('health', health- 0.008);
			end
		end
		if curStep > 2032 then
			if getProperty('health') > 0.05 then
				setProperty('health', health- 0.018);
			end
		end
	end
end