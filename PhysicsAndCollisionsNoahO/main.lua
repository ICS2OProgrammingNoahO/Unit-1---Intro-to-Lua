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
-- variables
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local channel
local music = audio.loadStream("bensound-slowmotion.mp3")
local ground
local beam
local beam2
local beam3
local beam4
local bgk
local ball1
local ball2
local ball3
local ball4
local ball5










------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Objects
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




--Ground
 ground = display.newImage("Images/ground.png", 0, 0)

	ground.x = display.contentWidth/2
	ground.y = display.contentHeight

	--Change the Width to be the same as the screen
	ground.width = display.contentWidth

	--Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 beam = display.newImage("Images/beam.png", 0, 0)

	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	--rotate the beam -60 degrees so its on an angle
	beam:rotate(45)

	--send to back
	beam:toBack()

	-- add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})



 beam2 =display.newImage("Images/beam.png", 0, 0)

	beam2.x = display.contentCenterX + (display.contentWidth/3)
	beam2.y = display.contentCenterY*1.65

	beam2.width = display.contentWidth/2
	beam2.height = display.contentHeight/10

	--rotate the beam -60 degrees so its on an angle
	beam2:rotate(135)

	--send to back
	beam2:toBack()

	-- add to physics
	physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})

beam3 = display.newImage("Images/beam.png", 0, 0)

	beam3.x = display.contentCenterX + 280
	beam3.y = display.contentCenterY - 145

	beam3.width = display.contentWidth/3
	beam3.height = display.contentHeight/10

	--rotate the beam -60 degrees so its on an angle
	beam3:rotate(45)

	--send to back
	beam3:toBack()

	-- add to physics
	physics.addBody(beam3, "static", {friction=0.5, bounce=0.3})

beam4 = display.newImage("Images/beam.png", 0, 0)

	beam4.x = display.contentCenterX + 165
	beam4.y = display.contentCenterY - 500

	beam4.width = display.contentWidth/2
	beam4.height = display.contentHeight/10

	--rotate the beam -60 degrees so its on an angle
	beam4:rotate(90)

	--send to back
	beam4:toBack()

	-- add to physics
	physics.addBody(beam4, "static", {friction=0.5, bounce=0.3})

--create background
bgk = display.newImage("Images/bkg.png", 0, 0)

	bgk.x = display.contentCenterX
	bgk.y = display.contentCenterY

	bgk.width = display.contentWidth
	bgk.height = display.contentHeight

	--send to back
	bgk:toBack()





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- create the first ball
local function FirstBall()
	-- creating first ball
	 ball1 = display.newImage("Images/super_ball.png", 970, 0)

	--add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})

end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function SecondBall()
	-- creating first ball
	 ball2 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.5, radius=12.5})

	ball2.xScale = 0.5
	ball2.yScale = 0.5


end


local function ThirdBall()
	-- creating first ball
	 ball3 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball3, {density=1, friction=0, bounce=0.9, radius=50})

	ball3.xScale = 2
	ball3.yScale = 2

local function BallThreeListener(touch)

	if (touch.phase == "began") then
			alreadyTouched3 = true
		end

	if ( (touch.phase == "moved") and (alreadyTouched3 == true) ) then
		ball3.x = touch.x
		ball3.y = touch.y
	end
	if (touch.phase == "ended") then
		alreadyTouched3 = false
	end
end
ball3:addEventListener("touch", BallThreeListener)
end

-- add the respective listeners




local function FourthBall()
	-- creating first ball
	 ball4 = display.newImage("Images/super_ball.png", 970, 0)

	--add to physics
	physics.addBody(ball4, {density=1, friction=0.01, bounce=0.3, radius=6.25})

	ball4.xScale = 0.25
	ball4.yScale = 0.25


end

local function FifthBall()
	-- creating first ball
	 ball5 = display.newImage("Images/super_ball.png", 500, 0)

	--add to physics
	physics.addBody(ball5, {density=0.2, friction=0.6, bounce=0.3, radius=100})

	ball5.xScale = 4
	ball5.yScale = 4

	local function BallFiveListener(touch)

	if (touch.phase == "began") then
			alreadyTouched5 = true
		end

	if ( (touch.phase == "moved") and (alreadyTouched5 == true) ) then
		ball5.x = touch.x
		ball5.y = touch.y
	end
	if (touch.phase == "ended") then
		alreadyTouched5 = false
	end
end
ball5:addEventListener("touch", BallFiveListener)


end

local function SoundTrack()
	audio.play(music, {loop = -1})
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Timer Delays
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

timer.performWithDelay( 0, FirstBall)
timer.performWithDelay( 500, SecondBall)
timer.performWithDelay( 1000, ThirdBall)
timer.performWithDelay( 1500, FourthBall)
timer.performWithDelay( 2500, FifthBall)
SoundTrack()




