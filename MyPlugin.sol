pragma solidity ^0.8.0;

import "./IPAccessControl.sol";

contract MyPlugin {

    IPAccessControl private _ipAccessControl;

    constructor() {
        _ipAccessControl = new IPAccessControl();
    }

    function grantAccessByIP(address ip) external {
        _ipAccessControl.grantAccessByIP(ip);
    }

    function revokeAccessByIP(address ip) external {
        _ipAccessControl.revokeAccessByIP(ip);
    }

    modifier onlyIpWhitelisted() {
        require(_ipAccessControl.hasRole(_ipAccessControl.IP_WHITELIST_ROLE(), msg.sender), "MyPlugin: sender not whitelisted");
        _;
    }

    // Use the `onlyIpWhitelisted` modifier to restrict access to this function based on IP address
    function doSomething() external onlyIpWhitelisted {
        // ...
    }
}
