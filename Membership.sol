// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;

contract Membership {

    event newMember(uint memberId, string name, uint level);
    
    //struct packed for gas optimization
     struct ClubMember {                         
        string name;
        uint32 memberId;
        uint16 level;
        uint16 winCount;
        uint16 lossCount;
    }

    //dynamic public array as database for new members
    ClubMember[] public members;                 

    //member Id assignment mapping
    mapping (uint => address) public memberIdOwner;      

    //check to ensure addresses can only register as a member once
    //new member appended to the end of members array
    function createMember(string memory _name, uint _memberId, uint _level) public {
        require(memberIdOwner[msg.sender] == 0);                            
        uint id = members.push(ClubMember(_name, _memberId, i=1)) - 1;      
        memberIdOwner[id] = msg.sender;
        emit newMember(id, _name, _level);
    }
}
