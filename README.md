# IPAccessControl
IPAccessControl is a smart contract that extends the AccessControl contract from the OpenZeppelin Access Control library and adds IP-based access control. It defines a new role `IP_WHITELIST_ROLE` which can be used to grant permission to add or remove IP addresses from the whitelist. The contract also implements custom access control policies using the `onlyIpWhitelisted` modifier, which restricts access to functions that have this modifier to addresses that are added to the IP whitelist.

# How to Use

To use the IPAccessControl contract in your own smart contract system, you can follow these steps:

1. Download the `IPAccessControl.sol` file from this repository
2. Import the `IPAccessControl` contract into your own smart contract file
3. Create a new instance of the IPAccessControl contract in your own smart contract's constructor, like this: `IPAccessControl private _ipAccessControl = new IPAccessControl();`
4. Use the `grantAccessByIP` and `revokeAccessByIP` functions to add or remove IP addresses from the whitelist as needed
5. Use the `onlyIpWhitelisted` modifier to restrict access to functions based on IP address

Here's an example of how you could use the `IPAccessControl` contract in your own smart contract:


pragma solidity ^0.8.0;

import "./IPAccessControl.sol";

contract MyContract {

    IPAccessControl private _ipAccessControl;

    constructor() {
        _ipAccessControl = new IPAccessControl();
    }

    function doSomething() external onlyIpWhitelisted {
        // This function can only be called by addresses that are on the IP whitelist
        // ...
    }
}


# License

This project is licensed under the MIT License<https://opensource.org/licenses/MIT>.

# Project Description

IPAccessControl is a smart contract that provides IP-based access control functionality for other smart contracts. It extends the AccessControl contract from the OpenZeppelin Access Control library and adds a new role `IP_WHITELIST_ROLE` which can be used to grant permission to add or remove IP addresses from the whitelist. The contract also implements custom access control policies using the `onlyIpWhitelisted` modifier, which restricts access to functions that have this modifier to addresses that are added to the IP whitelist.

# How It's Made

The IPAccessControl contract is written in Solidity and extends the AccessControl contract from the OpenZeppelin Access Control library. It uses the `grantRole`, `revokeRole`, and `hasRole` functions provided by the AccessControl contract to manage the `IP_WHITELIST_ROLE` and check if an address is on the IP whitelist. The `onlyIpWhitelisted` modifier is used to restrict access to functions based on IP address. We encountered no issues during the development of this contract.

# Tutorial
To build a development tool that extends the functionality of the IPAccessControl contract, you could follow these steps:

1. Define the new functionality that you want to add to the IPAccessControl contract, and create a new smart contract that implements this functionality.
2. Import the IPAccessControl contract and use it in your new smart contract to provide IP-based access control functionality.
3. Deploy both the IPAccessControl contract and your new smart contract to a test network, and test the new functionality to make sure it works as expected.

