// SPDX-License-Identifier: MIT

// defines solidity compiler version
pragma solidity >=0.7.0 <0.9.0;

contract Struct {


    // struct is a data type which creates a group of other datatypes
    // Employee is a data type which has string, uint, address as its child data types
    struct Employee{
        string name;
        uint age;
        address acc;
    }


    // creating a constructor to take user input in the array of struct type
    constructor (string memory _name, uint _age, address _acc){
        emp.name = _name;
        emp.age = _age;
        emp.acc = _acc;
    }

    // initialising variable for the data type Employee
    Employee public emp;

    // creating an array of a struct
    Employee[] public emparray;

    // function to set values in array of type Employee which will string, uint, and address as sub data types
    function setValues() public{

        // ways to insert values in a struct
        Employee memory emp1 = Employee("Shreyansh", 21, msg.sender);
        Employee memory emp2 = Employee({name:"Nikita", age:21, acc:msg.sender});

        // this method does not work on contract level
        Employee memory emp3;
        emp3.name = "Jyotsna";
        emp3.age = 21;
        emp3.acc = msg.sender;

        // now that we have created 3 different structs
        // insert struct into an array
        emparray.push(emp1);
        emparray.push(emp2);
        emparray.push(emp3);

        
    }
}