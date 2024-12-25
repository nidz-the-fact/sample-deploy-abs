## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

Foundry: https://book.getfoundry.sh <br/>
Foundry-zksync: https://foundry-book.zksync.io <br/>
Abstract chain docs: https://docs.abs.xyz/build-on-abstract/smart-contracts/foundry

### Install (for Windows)
> **Linux: `wsl --install` on Powershell**

## 1. Starter

### 1.1 install first time

```shell
curl -L https://raw.githubusercontent.com/matter-labs/foundry-zksync/main/install-foundry-zksync | bash
```
```shell
foundryup-zksync
```
recheck install

```shell
forge build --help | grep -A 20 "ZKSync configuration:"
```

*cc. learning: https://foundry-book.zksync.io/getting-started/installation* 
> **Note: for Windows, you must use wsl on the terminal in vs code.** <br/>
![image](https://github.com/user-attachments/assets/8f09b188-681b-47ec-aea8-c0f1f4fc212d)

### 2 Deploy

### 2.1 build file
```shell
forge build --zksync
```

### 2.2 deployed
```shell
forge create src/TokenName.sol:TokenName \
    --private-key <YOU_PRIVATE_KEY> \
    --rpc-url https://api.testnet.abs.xyz \
    --chain 11124 \
    --zksync \
    --verify \
    --verifier zksync \
    --verifier-url https://api-explorer-verify.testnet.abs.xyz/contract_verification
```

*`<YOU_PRIVATE_KEY>` = Private-key with wallet you use to deploy* <br/>
> **Note: please do not show the private key and treat it carefully.**
![image](https://github.com/user-attachments/assets/8f6080a9-a6af-4900-a8fc-9d0bfe473f24)


✅ Yay, congratulations if you succeeded as shown in the picture.

---

💻💖☕ by [Nidz The Fact](https://linktr.ee/nid_z) 🙏
```
0x361ef0829E71b3bBc806C224ffcecc97813f93cB
```
