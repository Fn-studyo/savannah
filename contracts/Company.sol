// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Company {
  struct Farm {
    uint index;
    string name;
    uint size;
    uint256 price;
    string location;
    uint256 percentage;
  }
  constructor() public {
  }
}
