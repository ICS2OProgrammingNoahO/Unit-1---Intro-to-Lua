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
-------------------------------------------------------------------------------------------------------------
--Variables
-------------------------------------------------------------------------------------------------------------

local elon
local score = 0
local scoreText
local channel
local channel2
local music = audio.loadStream("Sounds/music.mp3")
local click = audio.loadSound("Sounds/click.mp3")			

-------------------------------------------------------------------------------------------------------------
--FUNCTIONS
-------------------------------------------------------------------------------------------------------------

--functions makes elon appear randomly
function PopUp( )
	-- choosing random position on the screen between 0 and the size of the screen
	elon.x = math.random( 0, display.contentWidth )
	elon.y = math.random( 0, display.contentHeight )
	
	num1 = math.random( 1, 3)
	num2 = math.random( 4, 8)
	--make it a different size

	elon.xScale = num1/num2
	elon.yScale = num1/num2
	elon.isVisible = true

	timer.performWithDelay(250, Hide())
end

--this function calls popup after one second
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
		channel2 = audio.play(click)
		elon.isVisible = false
		
		
	end
end

local function SoundTrack()
	channel = audio.play(music, {loop = -1})
end

-------------------------------------------------------------------------------------------------------------
--Object Creation
-------------------------------------------------------------------------------------------------------------

elon = display.newImage("Images/elon.png", 0, 0 )

	--setting position
	elon.x = display.contentCenterX
	elon.y = display.contentCenterY
	--make it invisible
	elon.isVisible = false

scoreText = display.newText("SCORE = ".."0", 800, 350, nil, 30)
		scoreText:setFillColor(255, 255, 0)

-------------------------------------------------------------------------------------------------------------
--listeners
-------------------------------------------------------------------------------------------------------------
 elon:addEventListener( "touch", Whacked)
 GameStart()
 SoundTrack()