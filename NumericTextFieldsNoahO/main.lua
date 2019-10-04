-- Title: NumericTextFields
-- Name: Noah Ouellette
-- Course: ICS2O/3C
-- This program creates random addition problems that displays correct if the user answers correctly and displays incorrect if they are incorrect. This repats infinitely
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--hides the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background color
display.setDefault("background", 20/255, 225/255, 255/255)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectObject
local points = 0
local points_ = 0
local youLose
local youWin

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



local function AskQuestion()
	--generate 2 random numbers between a max. a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	--create question in text object
	questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="

end

local function HideCorrect()

	correctObject.isVisible = false
	incorrectObject.isVisible = false
	AskQuestion()

end

local function NumericFeildListener( event )
	-- User begins editing "numericfield"
	if ( event.phase == "began") then

		--clear text numericField
		event.target.text = ""

	elseif (event.phase == "submitted") then

		--when the answer is submitted (enter key pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		--if the users answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			timer.performWithDelay(500, HideCorrect)
		--if the users answer and the correct answer are different:
		--give points
		points = points +1
		-- update it in display object
		pointsText.text = "Points = " .. points
		if (points == 5) then
				youWin.isVisible = true
				correctObject.isVisible = false
				questionObject.isVisible = false
				numericfield.isVisible = false
				pointsText.isVisible = false
			end
		

		else incorrectObject.isVisible = true
			timer.performWithDelay(500, HideCorrect)
			points_ = points_ + 1
			if (points_ == 3) then
				youLose.isVisible = true
				incorrectObject.isVisible = false
				questionObject.isVisible = false
				numericfield.isVisible = false
				pointsText.isVisible = false
			end


		end
		--clear text numericField
		event.target.text = ""
	end
end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--displays a question and sets the color
--questionObject = display.newText( "", display.contentWidth/2, display.contentHeight/2, nil, 50 )
questionObject = display.newText( "", display.contentWidth*1/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(177/255, 20/255, 255/255)


--create the correct text object and make it invisable
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false


--create the incorrect text object and make it invisable
incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(155/255, 42/255, 198/255)
incorrectObject.isVisible = false

--create numeric field
numericfield = native.newTextField(display.contentWidth/2, display.contentHeight/2, 150, 80)
numericfield.inputType = "number"
numericfield.isVisible = true

--create lose text
youLose = display.newText( "You Lose!", display.contentWidth/2, display.contentHeight*2/3, nil, 70)
youLose.isVisible = false

--create win text
youWin = display.newText( "You Win!", display.contentWidth/2, display.contentHeight*2/3, nil, 70)
youWin.isVisible = false

--create points text
pointsText = display.newText("Points =" .. points, display.contentWidth/2, display.contentHeight/3, nil, 50)
-- add the event listener for the numeric feild
numericfield:addEventListener( "userInput", NumericFeildListener)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION CALLS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--call the functions
AskQuestion()

