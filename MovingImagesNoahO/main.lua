-- Title: MovingImages
-- Name: Noah Ouellette
-- Course: ICS2O/3
-- This program moves a beetleship across the screen and then makes it fade out.

	--hides the status bar
	display.setStatusBar(display.HiddenStatusBar)

	--global variables
	scrollSpeed = 5

	--background image with width and height
	local backgroundImage = display.newImageRect("Images/SpaceCute PNG/blueSky.png", 2048, 1536)

	--character image with width and height
	local plane1 = display.newImageRect("Images/SpaceCute PNG/jetFighter.png", 800, 800)

	--set the image to be transparent
	plane1.alpha = 0

	--set the initial x and y position of beetleship
	plane1.x = 0
	plane1.y = display.contentHeight/3

	--Function: MoveShip
	--Input:this function sccepts an event listener
	--
	--Output: none
	--Description: this function adds the scroll speed to the x-value of the ship
	local function MoveShip(event)
		-- add the scroll speed to the x-value of the ship
		plane1.x = plane1.x + scrollSpeed
		--change the transparency of the ship every time it moves so that it fades out
		plane1.alpha = plane1.alpha + 0.01
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", MoveShip)

	local function SizePlane1(event)
		-- add the scroll speed to the y-value of the ship
		plane1.xScale = plane1.xScale-0.002
		plane1.yScale = plane1.yScale-0.002
		
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", SizePlane1)

	--------------------------------------------------------------------------------------------------------------

	scrollSpeed2 = 8

	-- 2nd character image with width and height
	local plane2 = display.newImageRect("Images/SpaceCute PNG/jetFighter2.png", 200, 200)

	--set the image to be transparent
	plane2.alpha = 0

	--set the initial x and y position of beetleship
	plane2.x = math.random(display.contentWidth/2,800)
	plane2.y = 0

	--Function: MoveShip
	--Input:this function sccepts an event listener
	--
	--Output: none
	--Description: this function adds the scroll speed to the x-value of the ship
	local function MovePlane(event)
		-- add the scroll speed to the y-value of the ship
		plane2.y = plane2.y + scrollSpeed2
		--change the transparency of the ship every time it moves so that it fades out
		plane2.alpha = plane2.alpha + 0.01
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", MovePlane)

	local function SizePlane(event)
		-- add the scroll speed to the y-value of the ship
		plane2.xScale = plane2.xScale+0.02
		plane2.yScale = plane2.yScale+0.02
		
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", SizePlane)

	local function RotatePlane(event)
		-- add the scroll speed to the y-value of the ship
		plane2.rotation = plane2.rotate("Images/SpaceCute PNG/jetFighter2.png" 0.1)
		
	end

	-- MoveShip will be called over and over again
	Runtime:addEventListener("enterFrame", RotatePlane)
	