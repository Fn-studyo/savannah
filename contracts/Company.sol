// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;
contract Company {
  struct Farm {
    uint index;
    string name;
    uint size;
    uint256 price;
    string location;
    uint256 percentage;
  }

  event CreateFarm (
    address indexed farmAddress,
    uint index,
    string name,
    uint size,
    uint256 price,
    string location,
    uint256 percentage
  );

  mapping (address => Farm) private farms;
  address[] private farmIndex;
  uint public total;

  constructor() public {
    total = 0;
  }

  function createFarm(address farmAddress, string memory name, uint size, uint256 price, string memory location, uint256 percentage) public returns (bool success){
    farms[farmAddress].name = name;
    farms[farmAddress].size = size;
    farms[farmAddress].price = price;
    farms[farmAddress].location = location;
    farms[farmAddress].percentage = percentage;
    farms[farmAddress].index = farmIndex.push(farmAddress) - 1; 
    total++;
    //emit event
    emit CreateFarm(farmAddress, farms[farmAddress].index, name, size, price, location, percentage);
    return true;
  }

  function getFarm(address farmAddress) public view returns (string memory name , uint percentage , uint size, string memory location, uint256 price){
    return(
      farms[farmAddress].name, 
      farms[farmAddress].percentage, 
      farms[farmAddress].size,
      farms[farmAddress].location,
      farms[farmAddress].price
    );
   }
}
