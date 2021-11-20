pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract Strategy_Guerrier is ActionStrategy{
    

    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface moi = AvatarInterface(avatar);
        
        if(moi.getVie()<=5 && (previousAdvAction==Action.PHYSICAL_PARRY || previousAdvAction==Action.MAGICAL_PARRY || previousAdvAction==Action.DODGE)) {
            return Action.DODGE;
        }
        else {
            if (keccak256(abi.encodePacked(adversaire.getType())) == keccak256(abi.encodePacked("Guerrier")) || keccak256(abi.encodePacked(adversaire.getType())) == keccak256(abi.encodePacked("Assassin")) || keccak256(abi.encodePacked(adversaire.getType())) == keccak256(abi.encodePacked("Amazone")) || keccak256(abi.encodePacked(adversaire.getType())) == keccak256(abi.encodePacked("Barbare"))) {
                if (moi.getVie()<=20 && (previousAdvAction==Action.PHYSICAL_PARRY || previousAdvAction==Action.MAGICAL_PARRY || previousAdvAction==Action.DODGE)) {
                    return Action.PHYSICAL_PARRY;
                }
                else {
                    return Action.PHYSICAL_ATTACK;
                }
            }
            
            else if (keccak256(abi.encodePacked(adversaire.getType())) == keccak256(abi.encodePacked("Mage")) || keccak256(abi.encodePacked(adversaire.getType())) == keccak256(abi.encodePacked("Archere"))) {
                if (moi.getVie()<=20 && (previousAdvAction==Action.PHYSICAL_PARRY || previousAdvAction==Action.MAGICAL_PARRY || previousAdvAction==Action.DODGE)) {
                    return Action.MAGICAL_PARRY;
                }
                else {
                    return Action.PHYSICAL_ATTACK;
                }
            }
            
            else {
                return Action.PHYSICAL_ATTACK;
            }
        }
    }
}