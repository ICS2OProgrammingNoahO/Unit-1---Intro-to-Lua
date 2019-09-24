-- Title: HelloWorld
-- Name: Noah Ouellette
-- Course: ICS2O
-- This program displays Hello to the simulator and to the command terminal.
-- print to the command terminal
print ("Hello I can't wait till' 2:30")
print ("This class is awesome!")

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--sets background colour
display.setDefault("background", 204/255, 229/255, 255/255)

-- create a local variable
local textObject 

-- make textObject display my name
textObject = display.newText ("Hello Galaxy!", display.contentWidth/2, display.contentHeight/2, nil, 100)

--change the text colour
textObject:setTextColor(204/255, 153/255, 255/255)

--displays signature and creates variable
local textobjectsignature = display.newText ("By: Noah", 500, 550, nil, 50)

--change text color
textobjectsignature:setTextColor(0/255, 0/255, 255/255)