var addr = artifacts.require("./addresses.sol");

module.exports = function(deployer) {
  deployer.deploy(addr);
};
