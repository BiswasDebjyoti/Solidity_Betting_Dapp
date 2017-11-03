var Betting = artifacts.require("./Betting.sol");
var MultiNumberBettingV3 = artifacts.require("./MultiNumberBettingV3.sol"); 


module.exports = function(deployer) {
  deployer.deploy(Betting,2,3,6);
  deployer.deploy(MultiNumberBettingV3,1,3,9);
};
