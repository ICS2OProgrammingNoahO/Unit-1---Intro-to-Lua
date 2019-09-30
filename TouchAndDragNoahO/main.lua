-- Title: TouchAndDrag
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...

--Hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--local Variables 
local backgroundImage = display.newImageRect("Images/yellowsub.png", 2048, 1536)
local submarine = display.newImageRect("Images/submarine.png", 400, 200)
local submarineWidth = submarine.width 
local submarineHeight = submarine.height 

local shark = display.newImageRect("Images/shark.png", 200, 100)
local sharkWidth = shark.width
local sharkHeight = shark.height 