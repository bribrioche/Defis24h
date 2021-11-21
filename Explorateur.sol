pragma solidity >=0.4.22 <0.6.0;

import "WorldInterface.sol";


contract Explorateur {
    
    WorldInterface world;
    
    
    constructor()  public {

        //intanciation du world 
        world = WorldInterface("0x02e37c7cb5f13a7216bd1b6fe6a8f3ff95665109"); //adresse du smartcontact d'exporation
    }
    
    function explorerWorld(adress adressWolrd) public { 
        //getcoulieu 
        int cout = getCoutLieu(world);
        // savoir combien, convertir, savoir si on a assez puis payer
        //verif si c'est occupé
        if (!estOccupe(adressWolrd.lieu)){
            
        }
        //etc
        
        
        
        
        
        //explorer()
    }
    
    
    
    
}