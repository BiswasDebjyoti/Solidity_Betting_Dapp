var MultiNumberBettingV2 = artifacts.require("./MultiNumberBettingV3.sol");

contract('MultiNumberBettingV2', function(accounts) {
  it("should assert true", function() {
    var multi_number_betting_v2;
    return MultiNumberBettingV2.deployed().then(function(instance){
      multi_number_betting_v2 = instance;
      
      // Send a losing guess
      multi_number_betting_v2.guess(1,"John Miller");
     
      // Get the winner name
      return multi_number_betting_v2.minutesSinceLastWinning.call();

    }).then(function(result){
      console.log("Winner name= "+result);
	//return multi_number_betting_v2.totalGuesses.call();
    })
  });
});