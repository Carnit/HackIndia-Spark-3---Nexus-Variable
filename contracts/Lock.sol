// contracts/Flux1NFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Flux1NFT is ERC721, Ownable {
    uint256 public nextTokenId;

    constructor() ERC721("Flux1NFT", "FLUX") Ownable(msg.sender) {}

    function mint(address to) external onlyOwner {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}
