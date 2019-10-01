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

--Function