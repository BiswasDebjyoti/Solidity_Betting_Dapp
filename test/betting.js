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
      
      betting.guess(6,"simon");
      betting.guess(6,"Raj");
      betting.guess(2,"Rick");
      return betting.returnWinner.call();
    }).then(function (result){
    	
    	console.log("Winner:"+result.valueOf());
    	//betting.guess(9,"simon");
      ;
    	return betting.winnerAddress.call();

    }).then(function (result){
    	
    	console.log("\nLast winner: "+result.valueOf());
    	return betting.getLastWinner.call();
    }).then(function(result)
    {
      console.log("Last Winner: "+result.valueOf());
    })

  });



});
