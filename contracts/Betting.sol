pragma solidity ^0.4.4;

contract Betting {
  uint[3] params=[0,0,0];
  uint8  winnerCount=0;
  uint8  loserCount=0;
  uint lastWinnerAt;
  string lastWinnerName="***";
  uint guessedAt = now;
  //uint8  guess;
  address winner_Address;
  
//Winner Struct
  struct person
  {
    uint guess_;
    string name;
  }

  person person1;
  



    // constructor
  function Betting(uint8 param1,uint8 param2,uint8 param3) {
    
    
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
	
	function guess()
    {	uint i=0;
      uint guess=person1.guess_;
    //for loop to check if guess is there
        if(guess>10) revert();
    	for(i=0;i<3;i++)
    	{
    		if(params[i]==guess)
    		{
    			//return true;
                winnerCount++;
                lastWinnerName=person1.name;
    			lastWinnerAt=now;
                winner_Address=msg.sender;
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
    //WInner Address
    function winnerAddress() returns(address)
    {
        return winner_Address;
    }
    // guess setter
    function guessSet(uint guessSet)
    {
      person1.guess_=guessSet;
    }
    //Name Setter
    function nameSet(string nameSet)
    {
        person1.name =nameSet;
    }
}
