using TechTalk.SpecFlow;

namespace testVS2012
{
    [Binding]
    public class OpenAuctionSteps
    {
        [Given(@"I have item to sell")]
        public void GivenIHaveItemToSell()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"I press Sell On Auction")]
        public void WhenIPressSellOnAuction()
        {
            ScenarioContext.Current.Pending();
        }

        [Given( @"I'm a user" )]
        public void GivenIMAUser() {
          ScenarioContext.Current.Pending();
        }

        [Then( @"The Auction should start" )]
        public void ThenTheAuctionShouldStart() {
          ScenarioContext.Current.Pending();
        }
        [Given( @"I have item on Auction" )]
        public void GivenIHaveItemOnAuction() {
          ScenarioContext.Current.Pending();
        }

        [When( @"Item is sold on Auction" )]
        public void WhenItemIsSoldOnAuction() {
          ScenarioContext.Current.Pending();
        }

        [Then( @"In Next Step, User have to ship the item" )]
        public void ThenIHaveToShipTheItme() {
          ScenarioContext.Current.Pending();
        }

        [When( @"Item isn't sold on Auction" )]
        public void WhenItemIsnTSoldOnAuction() {
          ScenarioContext.Current.Pending();
        }

        [Then( @"Nothing in Next Step" )]
        public void ThenNothingInNextStep() {
          ScenarioContext.Current.Pending();
        }
    }
}