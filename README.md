# thePokerClub
This repository consists of smart contracts for use in running a large public Poker Club as a DAO on the Ethereum blockchain. 
Everything contained here is hypothetical and meant to exist as part of my Solidity Developer portfolio.

Contracts in this repository (and primary functionality) are listed below.

1. Membership.sol - storage/minting contract for the creation of new members

         - new member creation
         - minting of ERC20 tokens for use in Tournament registration  
             
2. Registration.sol - storage contract for Tournament registration

         - transfer of ERC20 tokens 
         - random number generation (RNG) for Tournament seating assignments
         
3. Results.sol - storage contract for Tournament results

         - creation of ERC721 NFT for Tournament winner
         - increment/decrement member LeaderBoard point balances
         - view current LeaderBoard status   
         
4. Proposals.sol - ballot contract for proposed rule changes

         - vote weight assignments
         - delegation for proxy voting
         - timer for vote submission
