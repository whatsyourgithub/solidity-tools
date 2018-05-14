pragma solidity ^0.4.23;

// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md

interface ERC20Interface {

    // optional
    function name() external view returns (string);
    function symbol() external view returns (string);
    function decimals() external view returns (uint8);

    // required
    function totalSupply() external view returns (uint256);
    function balanceOf(address _owner) external view returns (uint256);
    function transfer(address _to, uint256 _value) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
    function approve(address _spender, uint256 _value) external returns (bool);
    function allowance(address _owner, address _spender) external view returns (uint256);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}
