var Betting = artifacts.require("./Betting.sol");
var MultiNumberBettingV1 = artifacts.require("./MultiNumberBettingV1.sol"); 


module.exports = function(deployer) {
  deployer.deploy(Betting,2,3,6);
  deployer.deploy(MultiNumberBettingV1,1,3,9);
};
