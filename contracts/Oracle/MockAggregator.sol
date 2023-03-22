// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.10;

contract MockAggregator {
    int256 price;

    function setPrice(int256 _price) external returns (int256) {
        price = _price;
        return price;
    }

    function latestRoundData()
        public
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        uint80 roundId = 1;
        int256 answer = price;
        uint256 startedAt = 1;
        uint256 updatedAt = 1;
        uint80 answeredInRound = 1;
    }

    function decimals() public view returns (uint8) {
        uint8 decimals = 8;
        return decimals;
    }
}
