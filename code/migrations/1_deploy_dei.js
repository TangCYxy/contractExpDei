// console.log(path);
const dei = artifacts.require("DEIStablecoin");

module.exports = function (deployer) {
  deployer.deploy(dei);
};
