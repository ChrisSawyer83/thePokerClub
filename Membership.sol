// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;

contract Membership {

    event NewMember(uint memberId, string name, uint level);

     struct ClubMember {        //member information
        uint32 memberId;
        string name;
        uint16 level;
        uint16 winCount;
        uint16 lossCount;
    }

    ClubMember[] public members;       //dynamic array for storage of structured member data

    function _createMember(string memory _name, uint _memberId) public {
        members.push(ClubMember(_name, _memberId));
    }

    function getMemberId() public view returns (uint){
        return memberId;
    }

}
