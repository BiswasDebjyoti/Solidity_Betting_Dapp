pragma solidity ^0.4.4;

contract Betting {
  uint[3] params=[0,0,0];
  uint8  winnerCount=0;
  uint8  loserCount=0;
  string lastWinnerName="***";
  uint lastWinnerAt;



  function Betting(uint8 param1,uint8 param2,uint8 param3) {
    // constructor
    
    	params[0]=param1;
    	params[1]=param2;
    	params[2]=param3;
    }
    // returns loser count
    function returnLoser() returns(uint)
    {
    	return loserCount;
    }
    //returns loser count
    function returnWinner() returns(uint)
    {
    	return winnerCount;
    }
    //returns last winners name
    function getLastWinner() returns(string)
    {
        return lastWinnerName;
    }

    // guess function
	
	function guess(uint8 guess, string name)
    {	uint i=0;
    //for loop to check if guess is there
    	for(i=0;i<3;i++)
    	{
    		if(params[i]==guess)
    		{
    			//return true;
                winnerCount++;
                lastWinnerName=name;
    			lastWinnerAt=now;
                break;
    		}
    	}
        if(i==3)
        {
        loserCount++;
        }
  	 
    	
    }
    //getter time
    function LastWinnerMinute() returns(uint)
    {
        return (now - lastWinnerAt*1 minutes);
    }
}
