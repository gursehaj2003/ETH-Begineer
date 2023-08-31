# MyToken SEHAJ - Simple Token Contract

A straightforward Ethereum token contract that allows minting and burning of tokens, along with basic token information storage.

## Description

MyToken is a basic Ethereum smart contract written in Solidity that provides a simple implementation of a token with minting and burning capabilities. The contract maintains token balances for addresses and tracks the total supply of tokens. It allows users to mint new tokens and burn existing tokens based on certain conditions.

## Getting Started

### Prerequisites

* [Solidity Compiler](https://soliditylang.org/docs/getting-started.html) - Install the Solidity compiler to compile the contract.

### Installing

1. Download the `MyToken.sol` file from this repository.

### Compiling the Contract

Use the Solidity compiler to compile the contract:


### Deploying the Contract

You can deploy the compiled contract using tools like [Remix](https://remix.ethereum.org/) . Refer to their documentation for deployment instructions.

## Executing Transactions

After deploying the contract, you can interact with it using the following functions:

### Mint Tokens

Mint new tokens for an address:

```solidity
function mintTokens(address _address, uint _amount) public
```

### Burn Tokens

Burn existing tokens from an address:

```solidity
function burnSupply(address _address, uint _amount) public
```

Please ensure that the address attempting to burn tokens has a sufficient balance to fulfill the burn request.

## Authors

- Gursehaj Singh
- Contact: 22BCT10073@cuchd.in

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

