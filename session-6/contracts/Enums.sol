// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EnumExample {
    // Enum for order status
    enum Status { Pending, Shipped, Delivered, Cancelled }

    Status public orderStatus;

    function setShipped() public {
        orderStatus = Status.Shipped;
    }

    function isDelivered() public view returns (bool) {
        return orderStatus == Status.Delivered;
    }
}
