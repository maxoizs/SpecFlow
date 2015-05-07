namespace testVS2012
{
    [Binding]
    public class BiddingNotificationSteps
    {
        [Given(@"I'm a user watching an auction")]
        public void GivenIMAUserWatchingAnAuction()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"I'm a user bidding in an auction")]
        public void GivenIMAUserBiddingInAnAuction()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"I have bid X money")]
        public void GivenIHaveBidXMoney()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"An auction is about to end")]
        public void WhenAnAuctionIsAboutToEnd()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"An auction ends")]
        public void WhenAnAuctionEnds()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"X is the highest bid")]
        public void WhenXIsTheHighestBid()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"I been outbid by other bidder")]
        public void WhenIBeenOutbidByOtherBidder()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"I should get notification")]
        public void ThenIShouldGetNotification()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"Other bidders should notified")]
        public void ThenOtherBiddersShouldNotified()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
