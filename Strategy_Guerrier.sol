pragma solidity >=0.4.22 <0.6.0;
import "ActionStrategy.sol";
import "AvatarInterface.sol";

contract Strategy_Guerrier is ActionStrategy{
    

    constructor() public {}
    
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        AvatarInterface adversaire = AvatarInterface(avatarAdv);
        AvatarInterface moi = AvatarInterface(avatar);
        
        if (keccak256(abi.encodePacked("a")) == keccak256(abi.encodePacked("b"))) {
          return Action.DODGE;
        }
        return Action.NONE;    
    }
}