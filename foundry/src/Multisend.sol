// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
//pragma solidity 0.8.25;

contract MultiPayment {
    function send(
        address payable[] calldata recipients,
        uint[] calldata amounts
    ) external payable {
        require(recipients.length == amounts.length, "Recipients and Amounts should have same length");
        for(uint i=0;i<recipients.length; i++){
            recipients[i].call{value: amounts[i]}("");
        }
    }
}
