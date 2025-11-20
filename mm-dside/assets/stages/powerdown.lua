function onCreate()
--erue falso ekisde
	makeLuaSprite('falsedad','FalseHero',0,0)
	setScrollFactor('falsedad',1,1)
	addLuaSprite('falsedad',false)
--True Form alaverga
	makeLuaSprite('mx','MX_BG',0,0)
	setScrollFactor('mx',1,1)
	addLuaSprite('mx',false)
	setProperty('mx.visible',false)
end