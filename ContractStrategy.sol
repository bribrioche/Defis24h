pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";

contract Strategy is ActionStrategy{
    
    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
      
               
        if(previousAdvAction == Action.NONE){
            
        }
        address me = avatar;
        address adv = avatarAdv;
        if(me != adv){
            
        }
        
        if(damages<damagesAdv){
           return Action.PHYSICAL_ATTACK; 
        }else{
            return Action.NONE;
        }
        
    }
    
}