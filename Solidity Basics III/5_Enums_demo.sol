// SPDX-License-Identifier: MIT
// Almario Guzman III

pragma solidity ^0.8.3;
import "./3_Structs_demo.sol";

contract Enum {
    //Enum representing shipping status
    enum Status {
        Prending,
        Shipping,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    //Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    //You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    function accept() public {
        status = Status.Accepted;
    }

    //delete resets the enum t its first value, 0
    function reset() public {
        delete status;
    }
}