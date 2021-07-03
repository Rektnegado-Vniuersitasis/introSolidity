// SPDX-License-Identifier: MIT

/*
Objetivo de la Practica:
    * Aprender a importar y usar librerias externas como openzeppelin.
    * Aprender a heredar funciones de otros contratos en este caso las de el ERC20.
    * Aprender para que sirve el constructor en un SC.
    * Como usar las funciones de mint y burn para crear y quemar tokens.
    * Condiciones con require para evitar gastar gas si la condicion no se cumple.
*/

// Version de solidity
pragma solidity 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol

contract RektToken is ERC20 {
    address public owner;
    
    constructor() ERC20('RektToken', 'RKT') {
       owner = msg.sender;
    }
    
    
    function mintRKT(uint256 _supply) external {
        require(owner == msg.sender, 'Solo el owner puede mintear nuevos RKTs');
        _mint(owner, (_supply * 10 ** 9));
    }
    
    function burnRKT(uint256 _amount) external {
        _burn(msg.sender, _amount);
    }
}

// Documentacion usada:
// https://docs.avax.network/build/tutorials/platform/launch-your-ethereum-dapp
// https://openzeppelin.com/contracts/
