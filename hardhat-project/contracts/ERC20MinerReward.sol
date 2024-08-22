// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22; 
import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; 
contract ERC20MinerReward is ERC20 {


    event LogNewAlert(string description, address indexed _from, uint256 _n); 

    /**
     * 通过constructor构造函数调用父合约的构造函数ERC20()
     * 创建一个新的代币合约Sets the values for {name} and {symbol}.
     */
    constructor() ERC20("MinerReward", "MRW") {} 

    
    function _reward() public { 
        _mint(block.coinbase, 20); 
        emit LogNewAlert('_rewarded', block.coinbase, block.number); 
    } 
} 