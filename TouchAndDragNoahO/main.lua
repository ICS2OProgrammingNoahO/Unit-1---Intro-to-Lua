-- Title: TouchAndDrag
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...

--Hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--local Variables 
local backgroundImage = display.newImageRect("Images/yellowsub.png", 2048, 1536)
local submarine = display.newImageRect("Images/submarine.png", 150, 150)
local submarineWidth = submarine.width 
local submarineHeight = submarine.height 

local shark = display.newImageRect("Images/shark.png", 150, 150)
local sharkWidth = shark.width
local sharkHeight = shark.height 

--my boolean variables to keep track of which object I touched first
local alreadyTouchedSubmarine = false
local alreadyTouchedShark = false

--set the initial x and y position of the images
submarine.x = 400
submarine.y = 500

shark.x = 300
shark.y = 200

--function: SubmarineListener

--Input: touch listener
--Output: none
--Description: when submarine is touched, move it
local function SubmarineListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedShark == false) then
			alreadyTouchedSubmarine = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedSubmarine == true) ) then
		submarine.x = touch.x
		submarine.y = touch.y
	end
	if (touch.phase == "ended") then
		alreadyTouchedSubmarine = false
		alreadyTouchedShark = false
	end
end

-- add the respective listeners
submarine:addEventListener("touch", SubmarineListener)