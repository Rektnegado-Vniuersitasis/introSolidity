// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

contract SmallBank {
    mapping(address => uint) private balances;
    
    function getBalance() public view returns(uint) {
        return balances[msg.sender];
    }
    
    function depositMoney() public payable {
        balances[msg.sender] += msg.value;
    }
    
    function withdrawMoney(address payable _to, uint _amount) public {
        require(balances[msg.sender] >= _amount, "Not enough funds");
        balances[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}