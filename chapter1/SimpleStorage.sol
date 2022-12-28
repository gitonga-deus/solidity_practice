// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Demo {
    uint256 favoriteNumber;

    // Mapping
    mapping(string => uint256) public nameToFavoriteNumber;
    
    // People Data Type
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Dynamic Array
    People[] public people;

    // Functions
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view and pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    // calldata, memory and storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}