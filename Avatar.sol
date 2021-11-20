pragma solidity >=0.4.22 <0.6.0;

import "./AvatarInterface.sol";


contract Avatar is AvatarInterface {
    
    //caractéristiques de combat
    int endurance;
    int force;
    int intelligence;
    int vitesse;
    
    //caractéristiques de l'avatar
    string typeAvatar;
    string nom;
    int vie;
    int defensePhysique;
    int defenseMagique;
    int esquive;
    int puissancePhysique;
    int puissanceMagique;
    
    constructor() public {}
    
    /**
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        return NONE;
    }*/
    
    /**
     * Change les points de vie de l'avatar.
     * @param point_vie : le nouveau nombre de point de vie
     */
    function setVie(int point_vie) public{
        vie = point_vie;
    } 
    
    /**
     * Soigne l'avatar
     */
    function soigner() public {
        setVie(40);
    }
    
}