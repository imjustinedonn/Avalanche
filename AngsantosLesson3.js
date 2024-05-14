const hre = require("hardhat");

async function main() {
  const EventTest = await hre.ethers.getContractFactory("MathContract");
  const eventTest = await EventTest.deploy();

  await eventTest.deployed();

  eventTest.on("AdditionEvent", (result, message) => {
    console.log(`New Add event: ${message} and the result is ${result}`);
  });

  eventTest.on("SubtractionEvent", (result, message) => {
    console.log(`New Subtract event: ${message} and the result is ${result}`);
  });

  eventTest.on("MultiplicationEvent", (result, message) => {
    console.log(`New Multiply event: ${message} and the result is ${result}`);
  });

  console.log(`Contract deployed to ${eventTest.address}`);
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
