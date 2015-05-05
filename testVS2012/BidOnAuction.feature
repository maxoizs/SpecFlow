Feature: BidOnAuction
	Any user can bid in or watch an auction
	a user should get notification if he been outbid by another user
	a user should get notification if he didn't bid and the auction is about to end
	only highest bidder will won the auction if time ends.
	a user who won an auction should pay the item
	a user who lost an auction pays nothing

Scenario: Any user can bid in auction 
	Given I'm a user 
	And And there an open Auction 
	When I press bid
	Then My bid is saved

Scenario: Bidding user get notification when auction ends
	Given I'm a user bidding in auction	
	When Auction ends
	Then I get notification

Scenario: User is a highest bidder if his bid is the highest
	Given I'm a user bidding in auction
	And And I have bid X money
	When X is the highest
	Then I'm the highest bidder

Scenario: User is not a highest bidder if his bid is not the highest
	Given I'm a user bidding in auction
	And And I have bid X money
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

Scenario: Notify other bidders if they outbid 
	Given I'm a user bidding in auction
	And And I have bid X money
	When X is the highest
	Then Other users get notification

Scenario: Notify me if other user outbid  
	Given I'm a user bidding in auction	
	When other user become the highest bidder
	Then I get notification

Scenario: Any user can watch auction 
	Given I'm a user
	And And there an open Auction 
	When I press watch
	Then Auction saved to my watch list

Scenario: Watching users get notifications when auction is about to end  
	Given I'm a user
	And I'm watching an Auction 
	When Auction is about to end 
	Then I get notification

Scenario: Watching users get notifications when auction ends
	Given I'm a user
	And I'm watching an Auction 
	When Auction ends
	Then I get notification