-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

bg = display.newImageRect("bg.png", 320, 480)
bg.x, bg.y = 160, 240

player = display.newImageRect("player.png", 48, 48)

sound = audio.loadStream("engine.m4a")

-----------------------------------------------------------------------------------------
bg:addEventListener('tap', function(e)
	audio.play(sound)
	transition.to(player, {time=2000, x=e.x, y=e.y})
end)