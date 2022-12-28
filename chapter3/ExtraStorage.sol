// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // + 5 to favoritaNumber
    // override
    // virtual override

    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}