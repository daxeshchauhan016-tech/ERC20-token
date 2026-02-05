// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DaxeshToken is ERC20, Ownable {

    constructor() ERC20("DaxeshToken", "DTK") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }

    // MINT (only owner)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // BURN (anyone can burn their own tokens)
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

}
