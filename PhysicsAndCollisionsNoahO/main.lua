-- Title: PhysicsAndCollisions
-- Name: Noah Ouellette
-- Course: ICS2O/3C
-- This program  displays 4 different sized balls that fall down onto a ramp and roll. There's a ramp on the other side. There is background music.

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

--load physics
local physics = require("physics")

--start physics
physics.start()
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Objects
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	ground.x = display.contentWidth/2
	ground.y = display.contentHeight

	--Change the Width to be the same as the screen
	ground.width = display.contentWidth

	--Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local beam = display.newImage("Images/beam.png", 0, 0)

	beam.x = display.contentCenterX/5
	beam.x = display.contentCenterY*1.65

	beam.width = display.contentWidth/2
	beam.height = display.contentHeight * 1/10

	--rotate the beam -60 degrees so its on an angle
	beam:rotate(45)

	--send to back
	beam:toBack()

