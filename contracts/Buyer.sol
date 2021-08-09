// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Buyer {

  struct Person {
    uint index;
    string name;
    bytes32 email;
  }

  mapping (address => Person) public persons;
  address[] private personIndex;
  constructor() public {
  }
}
