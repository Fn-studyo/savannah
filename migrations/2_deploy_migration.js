const Buyer = artifacts.require("./Buyer.sol");
const Company = artifacts.require("./Buyer.sol");
const Farmer = artifacts.require("./Farmer.sol");

module.exports = function (deployer) {
  deployer.deploy(Buyer);
  deployer.deploy(Company);
  deployer.deploy(Farmer);
};
