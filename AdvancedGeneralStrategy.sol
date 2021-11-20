pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract ContractStrategyWarrior is ActionStrategy{
    

    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface moi = AvatarInterface(avatar);
         
        switch(avatarAdv.getType) {
            switch "Guerrier" :
                
                
        }
    }
}