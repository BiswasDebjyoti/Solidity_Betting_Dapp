pragma solidity ^0.4.4;

contract Betting {
  uint[3] params=[0,0,0];
  uint8  winnerCount=0;
  uint8  loserCount=0;
  uint lastWinnerAt;
  string lastWinnerName="***";
 
  //uint8  guess;
  
  
//Winner Struct
  struct person
  {
    uint guess_;
    address winner_Address;
    string name;
    uint guessedAt;
  }

  person person1;
  



    // constructor
  function Betting(uint8 param1,uint8 param2,uint8 param3) {
    
    
    	params[0]=param1;
    	params[1]=param2;
    	params[2]=param3;
    }
    

    // guess function --main function
	
	function guess()
    {	uint i=0;
      uint guess=person1.guess_;
      person1.guessedAt=now;
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
                person1.winner_Address=msg.sender;
                break;
    		}
    	}
        if(i==3)
        {
        loserCount++;
        }
  	 
    	
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
/*

// getter loser count
    function returnLoser() returns(uint)
    {
        return loserCount;
    }
    //getter loser count
    function returnWinner() returns(uint)
    {
        return winnerCount;
    }
    //getter last winners name
    function getLastWinner() returns(string)
    {
        return lastWinnerName;
    }
*/
