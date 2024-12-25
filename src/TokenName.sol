// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract TokenName is ERC20, ERC20Burnable {
    // edit: "TokenName" = name your token
          // "TN" = name your symbol
    constructor() 
    ERC20(
        "TokenName", 
        "TN"
        ) {
        _mint(msg.sender, 
        // edit: 1000000 = supply mint 1,000,000
        1000000 //
        * 10 ** decimals());
    }
}