using System.Collections.Generic;
using System.Linq;
using NUnit.Framework;
using TechTalk.SpecFlow;

namespace testVS2012
{
    [Binding]
    public class AuctionFeaturesSteps
    {
      public AuctionFeaturesSteps (){
        numbers = new List<int>();
      }
      public int result { get; set; }
      public List<int> numbers { get; set; }
        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int value)
        {
          numbers.Add( value );
        }
        
        [When(@"I press add")]
        public void WhenIPressAdd()
        {
          result = numbers.Sum();
        }
        
        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int value)
        {
          Assert.That( result, Is.EqualTo( value ) );
        }
    }
}
