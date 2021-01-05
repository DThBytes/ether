// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Contador{
    uint256 valor;
    
    constructor() {
        valor=0;
    }
    
    function getValor() view public returns(uint256){
        return valor;
    }
    
    function incrementar() public{
        valor+=1;
    }
}