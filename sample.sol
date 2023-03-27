// SPDX-License-Identifier: MIT

// defines solidity compiler version
pragma solidity >=0.7.0 <0.9.0;

// contract init 
contract ownerSample{
    // variable 
    address public owner;

    // constructor is called only once in a contract
    constructor(){
        // msg.sender gives the address of the person who deploys the contract to the variable
        owner = msg.sender;
    }

    // modifier is a function which sets the permission in the smart contract, 
    //it also checks if the functions follow the set permissions
    modifier onlyOwner(){
        require(msg.sender == owner, "Selected account is not the owner");
        _;
    }

    // this function lets the owner set some other account as the new owner
    // onlyOwner modifier is called to check the permissions
    function setOwner(address _newOwner) public onlyOwner{
        // require checks if the new owner's address is not null
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanAccess() public onlyOwner{
        // this function will be accessible only to the owner (syntax)
    }

    function anyoneCanAccess() public{
        // now this function can be accessed by anybody
    }
    
}