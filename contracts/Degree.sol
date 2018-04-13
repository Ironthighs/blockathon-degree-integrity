pragma solidity ^0.4.21;

contract Degree
{
    struct Class
    {
        bool passed;
    }

    struct Student
    {
        address person;
    }

    mapping(address => Student) public students;


    


}