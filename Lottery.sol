pragma solidity ^0.8.4;
//import "./routerInterface.sol"; 
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

contract swapCurr {
    address private constant ROUTER = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;
    address private constant USDT = 0x55d398326f99059ff775485246999027b3197955;
    IUniswapV2Router01 router;
    constructor() {
        router = IUniswapV2Router01(ROUTER);
    }
    function fromETHtoTokens(uint amountOutMin, address[] calldata path, uint deadline) public {
        router.swapExactETHForTokens(amountOutMin, path, USDT, deadline);
    }
}