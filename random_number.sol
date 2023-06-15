// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract RandomNumberGenerator {
    function generaterandomnumer( ) public view returns(uint) {
        uint randnum = uint256 (keccak256(abi.encodePacked(blockhash(block.number+1), block.timestamp))) % 900 + 100;
        //uint randomnumber = uint256(keccak256(abi.encodePacked(blockhash(block.number - 1),  block.timestamp))) % 900 + 100;
        return randnum;    }
    }


