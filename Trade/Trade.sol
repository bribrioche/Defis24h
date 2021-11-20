pragma solidity >=0.4.22 <0.6.0;

contract Trade {
    
    address payable public seller; // account for the seller
    address payable public buyer; // account for the user
    
    event TradeFortune(address sender, address receiver, uint value);
    
    constructor public() {
        seller = msg.seller;
    }

    function transfer(address sender, address receiver, uint value) {
        buyer.transfer(price); // the transfer member transfers the price of the item
    }
}