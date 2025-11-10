// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title SimpleStorage - exemple minimal
contract SimpleStorage {
    uint256 private value;

    event ValueSet(address indexed setter, uint256 newValue);

    function setValue(uint256 _value) external {
        value = _value;
        emit ValueSet(msg.sender, _value);
    }

    function getValue() external view returns (uint256) {
        return value;
    }
}
