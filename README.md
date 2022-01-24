# thePokerClub
This repository consists of smart contracts for use in running a private poker club called thePokerClub as a DAO on the Ethereum blockchain. 
Everything here is hypothetical and meant to exist as part of my Solidity Developer portfolio.

Contracts in this repository (and primary functionality) are listed below.

1. tokenGeneration - generation of ERC20 token for use in tournament registration (utility)

2. clubMembership - storage contract for the creation and management of club members

         - new member creation
         - funding of new member accounts with club utility token
             
3. eventRegistration - storage contract for Tournament registration

         - transfer of ERC20 tokens 
         - creation of unique tournament Id
         
4. clubLeaderBoard - storage contract for Tournament results

         - creation of ERC721 NFT for Tournament winner
         - increment/decrement member LeaderBoard point balances
         - view current LeaderBoard status   
         
5. clubProposals - ballot contract for proposed rule changes

         - vote weight assignments
         - delegation for proxy voting
         - timer for vote submission
