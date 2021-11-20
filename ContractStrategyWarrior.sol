pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract ContractStrategyWarrior is ActionStrategy{
    
<<<<<<< HEAD
=======

>>>>>>> cd34b154d52a957ef45be70fca2301ffdfa790c7
    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface moi = AvatarInterface(avatar);
        
        
        
        if(previousAdvAction == Action.PHYSICAL_ATTACK) {
            if(adversaire.getDefenseMagique() > adversaire.getDefensePhysique()) {
                return Action.PHYSICAL_PARRY;
                if(moi.getPuissanceMagique()>moi.getPuissancePhysique()) {
                    return Action.MAGICAL_ATTACK;
                }
                else {
                    return Action.PHYSICAL_ATTACK;
                }
                
            }
            else{
                return Action.PHYSICAL_PARRY;
                /*
                if(moi.getPuissanceMagique()>moi.getPuissancePhysique()) {
                    return Action.MAGICAL_ATTACK;
                }
                else{
                     return Action.PHYSICAL_ATTACK;
                }*/
            }   
        }
        else {
            return Action.MAGICAL_PARRY;
        }
    }
    
    function testeuh(address perso)external view returns(int value) {
        return AvatarInterface(perso).getDefensePhysique();
    }
}