// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PreCheck{

    function checkRequire(int8 amount) public pure {
        require(amount%2==0,"even number required");
    }


    function checkAssert(int8 amount) public pure {
        require(amount%2==0,"even number required");

        assert(amount==4);
    }

    function checkRevert(int8 amount) public pure {
        if(amount%2 !=0) {
            revert("even number require,revert!");
        }
    }
}