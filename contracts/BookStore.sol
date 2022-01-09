// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
pragma experimental ABIEncoderV2;

import "hardhat/console.sol";

contract BookStore{

    uint internal BookId; 

    struct Book{
        string title;
        uint16 year;
    }

    Book[] _books;

 

    function addBook(Book memory book) external returns(Book memory) { 
        _books.push(book);
        return book;
    }

    function getBooks() external view returns(Book[]memory ){
        return _books;
    }

    
}