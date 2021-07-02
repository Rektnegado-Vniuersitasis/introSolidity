// SPDX-License-Identifier: MIT

// Version de solidity
pragma solidity 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol

contract RektToken is ERC20 {
    address public owner;
    
    constructor() ERC20() {
        owner = msg.sender;
    }
}
