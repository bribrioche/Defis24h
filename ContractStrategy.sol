pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract Strategy is ActionStrategy{
    
    
    
    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface moi = AvatarInterface(avatar);
               
        if(previousAdvAction == Action.NONE){
            
        }
        
        if(damages<damagesAdv){
           return Action.PHYSICAL_ATTACK; 
        }else{
            return Action.NONE;
        }
        
    }
    
}