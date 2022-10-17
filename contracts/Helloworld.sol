pragma solidity 0.5.16;

contract Helloworld{
    string public message;
    address public owner;
    
    constructor(string memory _message) public{
        message = _message;
        owner=msg.sender;
    }
    function hello() public view returns (string memory) {
        return message;
    }
    function setMessage(string memory _message) public payable{
        require(msg.sender == owner);
        message = _message;
    }

}