pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract Ptdrlabonnestrat is ActionStrategy {//récup les points de Tous Pour Un
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        if (damagesAdv<=21){
            return Action.PHYSICAL_ATTACK;
        }else{
            return Action.NONE;
        }
    }
}