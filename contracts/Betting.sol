pragma solidity ^0.4.4;

contract Betting {
  uint[3] params=[0,0,0];
  uint8 winnerCount=0;uint8 loserCount=0;
  function Betting(uint8 param1,uint8 param2,uint8 param3) {
    // constructor
    
    	params[0]=param1;
    	params[1]=param2;
    	params[2]=param3;
    }
    function incre(uint8 guis)
    {
    	//call guess with a guess num
    	bool ans=guess(guis);
    	if(ans==true)
    		{winnerCount++;}
    	else {loserCount++;}
    }
	
	function guess(uint8 guess) returns(bool)
    {	uint i=0;
    //for loop to check if guess is there
    	for(i=0;i<3;i++)
    	{
    		if(params[i]==guess)
    		{
    			return true;
    			break;
    		}
    	}
    	
    	return false;
    }
}
