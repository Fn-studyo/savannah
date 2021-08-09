// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Farmer {

  struct User {
    uint index;
    string name;
    string location;
    bytes32 email;
  }

  mapping (address => User) public users;
  address[] private userIndex;
  constructor() public {
  }
}
