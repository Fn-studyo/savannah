const Buyer = artifacts.require("./Buyer.sol");
const Company = artifacts.require("./Buyer.sol");
const Farmer = artifacts.require("./Farmer.sol");
const Token = artifacts.require("./Token.sol");
const Exchange = artifacts.require("./Exchange.sol");

module.exports = function (deployer) {
  deployer.deploy(Buyer);
  deployer.deploy(Company);
  deployer.deploy(Farmer);
  deployer.deploy(Token);
  deployer.deploy(Exchange);
};
