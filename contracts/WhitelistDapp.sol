// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WhitelistDapp {
    uint256 public maxWhitelistCount;
    uint256 public whitelistCount = 0;

    mapping(address => bool) public isAddressWhitelisted;

    constructor(uint256 _maxWhitelistCount) {
        maxWhitelistCount = _maxWhitelistCount;
    }

    function addWhitelist() external {
        require(
            !isAddressWhitelisted[msg.sender],
            "You are already whitelisted!"
        );
        require(
            whitelistCount < maxWhitelistCount,
            "Sorry no more whitelist slots available"
        );
        whitelistCount += 1;
        isAddressWhitelisted[msg.sender] = true;
    }
}
