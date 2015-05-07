Feature: BiddingNotification
	a user should get notification if he been outbid by another user
	or if he watching an auction that is about to end/ ended

Scenario: Watching user should get notifications when an auction is about to end  
	Given I'm a user watching an auction 
	When An auction is about to end 
	Then I should get notification

Scenario: Watching user should get notifications when an auction ends
	Given I'm a user watching an auction 
	When An auction ends
	Then I should get notification

 Scenario: Notify other bidders if they been outbid
	Given I'm a user bidding in an auction
	And I have bid X money
	When X is the highest bid
	Then Other bidders should notified

Scenario: Notify a bidder if he had been outbid  
	Given I'm a user bidding in an auction	
	When I been outbid by other bidder
	Then I should get notification

Scenario: Bidding user get notification when an auction ends
	Given I'm a user bidding in an auction	
	When An auction ends
	Then I should get notification

Scenario: Bidding user get notification when an auction  is about ends
	Given I'm a user bidding in an auction	
	When An auction is about to end 
	Then I should get notification