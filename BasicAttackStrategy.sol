pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";

contract ContractStrategyMage is ActionStrategy{
    
    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
       return Action.MAGICAL_ATTACK;
    }
    
}