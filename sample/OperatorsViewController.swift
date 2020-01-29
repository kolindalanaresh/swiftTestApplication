//
//  OperatorsViewController.swift
//  sample
//
//  Created by naresh.ko on 20/01/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class OperatorsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Basic Operators
        var a = 10
       let b = 5
        let c = 10;
        a = b
        print(a)
        
        // add
        print(c + b)
        print(c - b)
        
        //adding two strings
        print("hello" + " " + "world")
        
        //if & else if condition check
        if c == b {
            print("equal")
        } else if c > b {
            print("greater")
        } else if c < b {
            print("less")
        } else if c != b {
            print("not equal")
        } else if c >= b {
            print("greater than equal to")
        } else if c <= b {
            print("less than equal to")
        }
        
        //if else condition
        if c == b {
            print(c)
        } else {
            print(c)
        }

        //true condition chekc using if else
        let contentHeight = 40
        let hasHeader = true
        let rowHeight = contentHeight + (hasHeader ? 50 : 20)
        print(rowHeight)
        
        
        //nil  check if nil is available it takes the default value
        let defaultColorName = "red"
        var userDefinedColorName: String?   // defaults to nil

        var colorNameToUse = userDefinedColorName ?? defaultColorName
        // userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
        print(colorNameToUse)
        
        userDefinedColorName = "green"
        colorNameToUse = userDefinedColorName ?? defaultColorName
        print(colorNameToUse)
        
        //For loop Closed Range Operator
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        
        //For loop Half-Open Range Operator
        let names = ["max", "min", "equal", "not equal"]
        for name in 0 ..< names.count {
            print("\(name) is called \(names[name])")
        }
        
        //one side for loop
        for name in names[2...] {
            print(name)
        }
        for name in names[...2] {
            print(name)
        }
        
        let range = ...5
        print(range.contains(7))
        print(range.contains(2))
        print(range.contains(-1))
        
        
        //Logical NOT Operator
        let checkOperator = false   // true or false
        if !checkOperator {
            print("ACCESS DENIED")
        } else {
            print("ACCESS Allowed")
        }
        
        
        //AND Operator
        let subjectOne = true
        let subjectTwo = false
        
        if subjectOne && subjectTwo {  // checking with true
            print("Allowed")
        } else {
            print("Denied")
        }
        
        
        //OR Operator
        if subjectOne || subjectTwo {  // checking with true
            print("OR Allowed")
        } else {
            print("OR Denied")
        }
    }

}
