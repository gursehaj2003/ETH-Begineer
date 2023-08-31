// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to walletBalance (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the walletBalance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the walletBalance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the walletBalance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
    string public nameToken="SEHAJ";
    string public abbrToken="SHJ";
    uint public totalSupply=0;

    // mapping variable here
    mapping(address => uint) public walletBalance;

    // mint function
    function mintTokens(address _address,uint _ammount) public {
        totalSupply+=_ammount;
        walletBalance[_address]+=_ammount;
    }

    // burn function
    function burnSupply(address _address,uint _ammount) public {
        if(walletBalance[_address]>=_ammount)
        {
            totalSupply-=_ammount;
            walletBalance[_address]-=_ammount;
        }
    }

}
