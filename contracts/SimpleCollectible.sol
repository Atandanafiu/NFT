// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract SimpleCollectible is ERC721URIStorage {
    uint256 public tokenCouner;

    constructor() ERC721("Punk", "Pug") {
        tokenCouner = 0;
    }

    function createCollectibe(string memory tokenURI) public returns (uint256) {
        uint256 newTokenId = tokenCouner;
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
        tokenCouner = tokenCouner + 1;
        return newTokenId;
    }
}
