// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Banco {
    
    address owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
    
    function deposito(uint256 amount) public payable{
        require(msg.value == amount);
    }
    
    function retiro() public payable onlyOwner{
        msg.sender.transfer(address(this).balance);
        
    }
    function saldo() public view returns(uint256){
        return address(this).balance;
    }
}