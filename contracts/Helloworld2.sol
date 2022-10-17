pragma solidity 0.5.16;

contract HelloworldPermanent{
    string public message;
    
    constructor(string memory _message) public{
        message = _message;
    }

}