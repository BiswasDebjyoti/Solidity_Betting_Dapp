var Betting=artifacts.require("./Betting.sol")
contract('Betting', function(accounts) {
	//Initiated with values 2,3,6
  

 it("should assert true", function() {
    var betting;
    return Betting.deployed().then(function(instance){
      betting = instance;
      //return betting.getResult.call();
    }).then(function (result) {
      
      
      betting.guess(1,"simon");
      
      betting.guess(1,"simon");

      betting.guess(1,"simon");
      //betting.guess(9,"simon");
      //betting.subtractFromNumber(5);
      return betting.returnWinner.call();
    }).then(function (result){
    	
    	console.log("Winner:"+result.valueOf());
    	//betting.guess(9,"simon");
      betting.guess(6,"Raj");
    	return betting.LastWinnerMinute.call();

    }).then(function (result){
    	
    	console.log("\nLast winner time:"+result.valueOf());
    	//return betting.returnLoser.call();
      return betting.getLastWinner.call();
    }).then(function(result)
    {
      console.log("Last Winner: "+result.valueOf());
    })

  });



});
