pragma solidity ^0.8.0;

contract ExceptionHandlingContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        // Using require() to validate a condition
        require(_newValue > 0, "New value must be greater than zero");
        value = _newValue;
    }

    function getValue() external view returns (uint256) {
        return value;
    }

    function performOperation(uint256 _amount) external {
        // Using assert() to validate an assertion
        assert(_amount <= value);
        value -= _amount;

        // Using revert() to handle exceptional conditions
        if (value == 0) {
            revert("Value reached zero");
        }
    }
}
