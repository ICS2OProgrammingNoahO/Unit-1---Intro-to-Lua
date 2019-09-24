-- Title: MovingImages
-- Name: Noah Ouellette
-- Course: ICS2O/3
-- This program moves a beetleship across the screen and then makes it fade out.

	--hides the status bar
	display.setStatusBar(display.HiddenStatusBar)

	--global variables
	scrollSpeed = 3

	--background image with width and height
	local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

	--character image with width and height
	local beetleship = display.newImageRect("Images/SpaceCute PNG/beetleship.png", 200, 200)

	--set the image to be transparent
	beetleship.alpha = 0

	--set the initial x and y position of beetleship
	beetleship.x = 0
	beetleship.y = display.contentHeight/3

	--Function: MoveShip
	--Input:this function sccepts an event listener
	--
	--Output: none
	--Description: this function adds the scroll speed to the x-value of the ship
	local function MoveShip(event)
		-- add the scroll speed to the x-value of the ship
		beetleship.x = beetleship.x + scrollSpeed
		--change the transparency of the ship every time it moves so that it fades out
		beetleship.alpha = beetleship.alpha + 0.01
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", MoveShip)

	--------------------------------------------------------------------------------------------------------------

	scrollSpeed2 = 50
	-- 2nd character image with width and height
	local girl1 = display.newImageRect("Images/SpaceCute PNG/girl1.png", 200, 200)

	--set the image to be transparent
	girl1.alpha = 0

	--set the initial x and y position of beetleship
	girl1.x = display.contentHeight/2
	girl1.y = 0

	--Function: MoveShip
	--Input:this function sccepts an event listener
	--
	--Output: none
	--Description: this function adds the scroll speed to the x-value of the ship
	local function MoveGirl(event)
		-- add the scroll speed to the y-value of the ship
		girl1.y = girl1.y + scrollSpeed2
		--change the transparency of the ship every time it moves so that it fades out
		girl1.alpha = girl1.alpha + 0.1
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", MoveGirl)