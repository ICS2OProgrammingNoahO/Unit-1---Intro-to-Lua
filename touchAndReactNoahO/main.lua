-- Title: TouchAndReact
-- Name: Noah Ouellette
-- Course: ICS2O/3C
--this program does something when I click on the button.

--se background
display.setDefault ("background", 153/255, 204/255, 255/255)

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set it's position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

--create red button,set it's position and make it invisable
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

--create text object, set it's position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

--create the checkmark
local check = display.newImageRect("Images/checkmark.png", 150, 150)
check.x = display.contentWidth/2
check.y = display.contentHeight/1.5
check.isVisible = false

local x = display.newImageRect("Images/red_x.png", 150, 150)
x.x = display.contentWidth/2
x.y = display.contentHeight/1.5
x.isVisible = false
--Function: BlueButtonListener
--Input: touch Listener
--Output: none
--Description: when blue button is clicked, it will make the text appear with the red button, and make the blue button disappear

--create the sound
local correctSound = audio.loadSound( "Sounds/Correct Answer Sound Effect.mp3" )
local wrongSound = audio.loadSound( "Sounds/Wrong Buzzer Sound Effect.mp3")
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		check.isVisible = true
		x.isVisible = false
		audio.play( correctSound )
	end

	if(touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
	end
end

local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = true
		
	end

	if(touch.phase == "ended") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = false
		check.isVisible = false
		x.isVisible = true
		audio.play( wrongSound )
	
	end
end
--listeners
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)

