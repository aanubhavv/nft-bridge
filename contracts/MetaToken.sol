// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MetaPixelNFT is ERC721URIStorage, Ownable {
    constructor() ERC721("Meta Pixels", "MPX") {}

    function safeMint(
        address _to, 
        uint256 _tokenId, 
        string memory _uri
    ) external onlyOwner {
        _safeMint(_to, _tokenId);
        _setTokenURI(_tokenId, _uri);
    }
}