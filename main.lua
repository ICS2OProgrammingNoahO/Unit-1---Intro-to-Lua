-- Title: AreaOfRectangleAndCircle
-- Name: Noah Ouellette
-- Course: ICS2O
-- This program Calculates the area of a rectangle and a circle using pixels

--create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local AreaOfRectangle
local areaTextCircle
local textSize = 50
local myCirlce
local radiusOfCircle = 150
local AreaOfCircle
local PI = 3.1415926

-- Sets the background color of my screen
display.setDefault("background", 0/255, 255/255, 255/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x, y,) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 75

--set the width of the border
myRectangle.strokeWidth = 20

--set the color of the rectangle
myRectangle:setFillColor(100/255, 100/255, 100/255)

--sets the color of the border
myRectangle:setStrokeColor(0, 1, 0)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

--write the arrea on the screen. Take into consideration the size of the font when posisioning 
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

--anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the color of the newtext
areaText:setTextColor(0, 0, 0)

------------------------------------------------------------------------------------------------------------





--draw the circle 
myCircle = display.newCircle(0, 0, radiusOfCircle)

-- anchor the circle in the top left corner of the screen and set its (x, y,) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 700
myCircle.y = 0

--set the width of the border
myCircle.strokeWidth = 20

--set the color of the rectangle
myCircle:setFillColor(100/255, 100/255, 100/255)

--sets the color of the border
myCircle:setStrokeColor(0, 1, 0)

--calculate the area
AreaOfCircle = radiusOfCircle * radiusOfCircle * PI

--write the arrea on the screen. Take into consideration the size of the font when posisioning 
areaTextCircle = display.newText("The area of this Circle with a radius of \n" ..
	radiusOfCircle .. " is " ..
	AreaOfCircle .. " pixels².", 0, 50, Arial, textSize)

--anchor the text and set its (x,y) position
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 20
areaTextCircle.y = 600

-- set the color of the newtext
areaTextCircle:setTextColor(0, 0, 0) 


