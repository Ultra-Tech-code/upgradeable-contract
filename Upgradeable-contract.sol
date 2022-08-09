//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;
//Upgradeable contract
// Delegatecall

// in the implementation contract, the logic can be changed. the proxy contract is
// pointing to the implemetation contract to perform it's operation.
// (the setvars function logic can be changed; num = num; to num = 4 * _num;


//the proxy contract
//This is the logic behind proxy contract
contract implemetation{
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable{
        // num = _num;
        num = 4 * _num;
        sender = msg.sender;
        value = msg.value;
    }

}

//this is the skeleton being deployed, it makes refrence to the implementation contract to perform it's operation
contract proxy{
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _mainAddress, uint _num) external payable{
        //This is a type of delegate call.
        // _mainAddress.delegatecall(
        //     abi.encodeWithSignature("setVars(uint256)", num)
        // );
        //This is another type of delegate call
        (bool success, bytes memory data) = _mainAddress.delegatecall(
            abi.encodeWithSelector(implemetation.setVars.selector, _num)
        );
        require(success, "contract interaction failed");
    }

}
