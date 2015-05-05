Feature: OpenAuctionFeatures	
	any user can sell on auction 
  if item sold use have to ship it
  if item not sold user have to do nothing

Scenario: Any user can open an Auction 
	Given I'm a user 
	And I have item to sell
	When I press Sell On Auction
	Then The Auction should start

Scenario: If Item sold user have to ship the item
	Given I'm a user 
	And I have item on Auction
	When Item is sold on Auction 
	Then In Next Step, User have to ship the item

Scenario: If Item not sold, nothing in to do
	Given I'm a user 
	And I have item on Auction
	When Item isn't sold on Auction 
	Then Nothing in Next Step