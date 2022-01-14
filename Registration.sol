// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./membership.sol";

contract Registration is Membership{

    struct Registrant {
        string name;
        uint32 memberId;
        uint16 level;
    }

    function joinTournament(uint _memberId) public {
        require(msg.sender == memberIdOwner[_memberId]);
    }
}
