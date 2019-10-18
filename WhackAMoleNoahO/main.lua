-- Title: WhackAnElon
-- Name: Noah Ouellette
-- Course: ICS2O/3C
-- This program makes an object appear on the screen for an amount of time and then disappears

--creating background
local background = display.newImageRect("Images/X.gif", 1000, 1000)
background.x = display.contentCenterX
background.y = display.contentCenterY

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--creating WhackAnElon
local elon = display.newImage("Images/elon.png", 0, 0 )

	--setting position
	elon.x = display.contentCenterX
	elon.y = display.contentCenterY
--make it a third of its size
	elon.xScale = 1/3
	elon.yScale = 1/3
--make it invisible
	elon.isVisible = false
-- create score and score text
local score = 0
local scoreText = display.newText("SCORE = ".."0", 700, 100, nil, 70)

-------------------------------------------------------------------------------------------------------------
--FUNCTIONS
-------------------------------------------------------------------------------------------------------------

--functions makes elon appear randomly
function PopUp( )
	-- choosing random position on the screen between 0 and the size of the screen
	elon.x = math.random( 0, display.contentWidth )
	elon.y = math.random( 0, display.contentHeight )

	elon.isVisible = true

	timer.performWithDelay(250, Hide())
end

--this function calls popup after three seconds
function PopUpDelay( )
	timer.performWithDelay( 2000, PopUp)
end

--this function makes elon invisable and then calls popupdelay
function Hide( )
	elon.isVisible = true
	PopUpDelay()
end

--this function starts the game
function GameStart( )
	PopUpDelay()
end

--this function increments the score only if elon is clicked. It then displays the new score.
function Whacked( event )
	--if touch phase just started
	if (event.phase == "began") then
		score = score + 1
		scoreText.text = "SCORE = ".. score
	end
end

-------------------------------------------------------------------------------------------------------------
--listeners
-------------------------------------------------------------------------------------------------------------
 elon:addEventListener( "touch", Whacked)
 GameStart()