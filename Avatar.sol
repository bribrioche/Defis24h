pragma solidity >=0.4.22 <0.6.0;

import "AvatarInterface.sol";


contract Avatar is AvatarInterface {
    
    //caractéristiques de combat
    /*int endurance;
    int force;
    int intelligence;
    int vitesse;*/
    
    //caractéristiques de l'avatar
    string typeAvatar;
    string nom;
    int vie;
    int defensePhysique;
    int defenseMagique;
    //int esquive;
    int puissancePhysique;
    int puissanceMagique;
    
    constructor() public {
        vie = 0;
    }
    
    /**
    function chooseNextAction(Action previousAdvAction, address avatar, int damages, address avatarAdv, int damagesAdv) external view returns(Action action){
        return NONE;
    }*/
    
    function checkVie() external view returns(int actualVie) {
        return (vie);
    }
    
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
        
        (int endurance, int force, int intelligence, int vitesse) = this.getCaracteristiques();
        setVie(endurance);
    }
    
    
    /**
     * Donne les caractéristiques de l'avatar.
     * @return l'endurance, la force, l'intelligence et la vitesse
     */
    function getCaracteristiques() external view returns(int endurance, int force, int intelligence, int vitesse) {
        return (20, 10, 10, 10);
    }

    /**
     * Donne le type de l'avatar.
     * @return le nom du type d'avatar
     */
    function getType() external view returns(string memory){return "";}

    /**
     * Donne le nom de l'avatar.
     * @return son nom
     */
    function getNom() external view returns(string memory){return "";}

    /**
     * Donne la vie actuelle de l'avatar.
     * @return le nombre de points de vie
     */
    function getVie() external view returns(int){return 0;}

    /**
     * Donne la défense physique de l'avatar
     * @return la valeur de défense physique
     */
    function getDefensePhysique() external view returns(int){return 0;}

    /**
     * Donne la défense magique de l'avatar
     * @return la valeur de défense magique
     */
    function getDefenseMagique() external view returns(int){return 0;}

    /**
     * Donne l'esquive de l'avatar
     * @return la valeur d'esquive
     */
    function getEsquive() external view returns(int){return 0;}

    /**
     * Donne la puissance physique de l'avatar
     * @return la valeur de puissance physique
     */
    function getPuissancePhysique() external view returns(int){return 0;}

    /**
     * Donne la puissance magique de l'avatar
     * @return la valeur de puissance magique
     */
    function getPuissanceMagique() external view returns(int){return 0;}

    /**
     * Modifie la stratégie de combat.
     * @param strategie l'adresse de la nouvelle stratégie de combat
     */
    function modifierStrategieCombat(address strategie) external {}
    
}