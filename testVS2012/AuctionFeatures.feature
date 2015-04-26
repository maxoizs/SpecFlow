Feature: AuctionFeatures
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Add two numbers
	Given I have entered 50 into the calculator
	And I have entered 73 into the calculator
	When I press add
	Then the result should be 123 on the screen
