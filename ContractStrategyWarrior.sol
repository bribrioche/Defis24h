pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract ContractStrategyWarrior is ActionStrategy{
    
    
    
    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface moi = AvatarInterface(avatar);
         
        if(previousAdvAction == Action.PHYSICAL_ATTACK){      
            if(adversaire.getDefenseMagique()>adversaire.getDefensePhysique()){
                if(moi.getPuissanceMagique()>moi.getPuissancePhysique()){
                    return Action.MAGICAL_ATTACK;
                }else{
                    return Action.PHYSICAL_ATTACK;
                }
                
            }else{
                if(moi.getPuissanceMagique()>moi.getPuissancePhysique()){
                    return Action.MAGICAL_ATTACK;
                }else{
                    return Action.PHYSICAL_ATTACK;
                }
            }      
         
    
        }else{
            return Action.MAGICAL_PARRY;
        }
    }
}