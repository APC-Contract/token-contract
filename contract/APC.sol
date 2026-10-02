// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @title APC
/// @notice Fixed-supply BEP-20 using OpenZeppelin Contracts v5.4.0.
/// @dev Custom logic is only this file: name/symbol, 10B constructor mint to `initialHolder`,
///      and ERC20Burnable. No owner, mint, pause, blacklist, tax, or proxy.
///      The deploying wallet is not the initial holder; pass a separate treasury/Safe.
contract APC is ERC20, ERC20Burnable {
    uint256 public constant TOTAL_SUPPLY = 10_000_000_000 ether;

    error ZeroInitialHolder();

    constructor(address initialHolder) ERC20("APC", "APC") {
        if (initialHolder == address(0)) revert ZeroInitialHolder();
        _mint(initialHolder, TOTAL_SUPPLY);
    }
}
