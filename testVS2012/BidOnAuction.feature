Feature: BidOnAuction
	Any user can bid in or watch an auction	
	only highest bidder will won the auction if time ends.
	a user who won an auction should pay the item
	a user who lost an auction pays nothing

Scenario: Any user can bid in auction 
	Given I'm a user 
	And there an open Auction 
	When I press bid
	Then My bid is saved

Scenario: User is a highest bidder if his bid is the highest
	Given I'm a user bidding in auction
	And I have bid X money
	When X is the highest
	Then I'm the highest bidder

Scenario: User is not a highest bidder if his bid is not the highest
	Given I'm a user bidding in auction
	And I have bid X money
	When X isn't the highest
	Then I'm not the highest bidder
  
Scenario: User win an Auction
	Given I'm a user bidding in auction
	And I'm the highest bidder
	When Auction ends
	Then I'm have to pay

Scenario: User loss an Auction
	Given I'm a user bidding in auction
	And I'm not the highest bidder
	When Auction ends
	Then I'm have to pay nothing
  
Scenario: Any user can watch auction 
	Given I'm a user
	And there an open Auction 
	When I press watch
	Then Auction saved to my watch list