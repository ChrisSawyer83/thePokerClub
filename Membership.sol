// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;

import "./tokenGeneration.sol/";

contract clubMembership is tokenGeneration {

    event newMember(uint memberId, string name, uint level);
    
    //struct packed for gas optimization
     struct ClubMember {                         
        string name;
        uint32 memberId;
        uint16 level;
    }

    //dynamic public array as database for new members
    ClubMember[] public members;                 

    //member Id assignment mapping
    mapping (uint => address) public memberIdOwner;
    mapping (address => uint) public balance;

    //new member creation and account funding
    //check to ensure addresses can only register as a member once 
    //new member appended to the end of members array as Level 1 member
    //assigns memberId to function caller
    //returns new member information to front end
    function createMember(string memory _name, uint _memberId, uint _level) public {
        require(memberIdOwner[msg.sender] == 0);                                           
        uint id = members.push(ClubMember(_name, _memberId, i=1)) - 1;           
        memberIdOwner[id] = msg.sender;                                 
        emit newMember(id, _name, _level);
    
    //transfer 1000 TPCCToken when the new club member is added to the array
        for(uint256 i=0; i < addressArray.length; i++) {
        require(msg.sender = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        address payable addr = addressArray[i];
        addr.transfer(1000 TPCCToken);
    }

}
