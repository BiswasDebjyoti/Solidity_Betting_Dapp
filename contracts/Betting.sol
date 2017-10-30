pragma solidity ^0.4.4;

contract Betting {
  uint[3] params=[0,0,0];
  function Betting(uint8 param1,uint8 param2,uint8 param3) {
    // constructor
    
    	params[0]=param1;
    	params[1]=param2;
    	params[2]=param3;
    }


    function guess(uint8 guess) returns(bool)
    {
    	return true;
    }
}
