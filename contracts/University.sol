pragma solidity ^0.4.21;

contract University 
{
    address public owner;
    
    
    mapping(address => bool) public isAdministrator;

    // Mapping of student to degree
    mapping(bytes32 => bytes32[]) public studentDegree;


    function University() public
    {
        owner = msg.sender;
        isAdministrator[owner] = true;
        
    }

    modifier onlyOwner {
        require(owner == msg.sender);
        _;
    }

    modifier onlyAdministrator
    {
        require(isAdministrator[msg.sender] == true);
        _;
    }

    function addDegree(bytes32 studentId, bytes32 degreeId) public onlyAdministrator
    {
        studentDegree[studentId].push(degreeId);
    }

    function addAdmin(address newAdmin) public onlyOwner {
        isAdministrator[newAdmin] = true;
    }

}