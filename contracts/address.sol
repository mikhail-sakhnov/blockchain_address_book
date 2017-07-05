pragma solidity ^0.4.11;

contract mortal {
    /* Define variable owner of the type address*/
    address owner;

    /* this function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}


contract addresses is mortal {
    int codes;
    mapping (string => int) emailsStorage;
    
    function addresses() {
        codes = 1;
    }

    function checkMail(string email) public returns (int) {
        if (emailsStorage[email] == 0) {
            return -1;
        } else {
            return emailsStorage[email];
        }
    }

    function addEmail(string email) {
        codes++;
        emailsStorage[email] = codes;
    }
}
