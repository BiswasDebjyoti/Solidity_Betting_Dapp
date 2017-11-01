var Betting=artifacts.require("./Betting.sol")
contract('Betting', function(accounts) {
	//Initiated with values 2,3,6
  

 it("should assert true", function() {
    var betting;
    return Betting.deployed().then(function(instance){
      betting = instance;
      //return betting.getResult.call();
    }).then(function (result) {
      
      
      betting.guess(3,"simon");
      
      betting.guess(3,"simon");

      betting.guess(5,"simon");
      betting.guess(9,"simon");
      //betting.subtractFromNumber(5);
      return betting.returnWinner.call();
    }).then(function (result){
    	
    	console.log(" Winner:"+result.valueOf());
    	betting.guess(9,"simon");
      betting.guess(6,"Raj");
    	return betting.returnLoser.call();

    }).then(function (result){
    	
    	console.log(" \nLoser:"+result.valueOf());
    	//return betting.returnLoser.call();
      return betting.getLastWinner.call();
    }).then(function(result)
    {
      console.log(result.valueOf());
    })

  });



});
