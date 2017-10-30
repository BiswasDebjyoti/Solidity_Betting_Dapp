var Betting=artifacts.require("./Betting.sol")
contract('Betting', function(accounts) {
	//Initiated with values 2,3,6
  

 it("should assert true", function() {
    var betting;
    return Betting.deployed().then(function(instance){
      betting = instance;
      //return betting.getResult.call();
    }).then(function (result) {
      
      //assert.equal(result.valueOf(), 10, "Contract initialized with value NOT equal to 10!!!");
      //betting.double_();
      betting.incre(3);
      //console.log("Winner Count:"+betting.returnWinner());
      betting.incre(3);

      betting.incre(5);
      betting.incre(9);
      //betting.subtractFromNumber(5);
      return betting.returnWinner.call();
    }).then(function (result){
    	
    	console.log(" Winner:"+result.valueOf());
    	betting.incre(9);
    	return betting.returnLoser.call();

    }).then(function (result){
    	
    	console.log(" \nLoser:"+result.valueOf());
    	//return betting.returnLoser.call();
    })
  });



});
