var Migrations = artifacts.require("./Migrations.sol");
var University = artifacts.require("./University.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(University);
};
