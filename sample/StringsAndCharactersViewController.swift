//
//  StringsAndCharactersViewController.swift
//  sample
//
//  Created by naresh.ko on 20/01/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class StringsAndCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Strings and Characters")
        
        let someString = "String"
        print(someString)
        
        //Line Break string
        let linebreakString = """

        new string

        """
        print(linebreakString)
        
        let threeMoreDoubleQuotationMarks = #"""
        Here are three more double quotes: """
        """#
        print(threeMoreDoubleQuotationMarks)
        
        
        //Empty String
        var emptyString = ""
        var antotherString = String()
        print(emptyString)
        print(antotherString)
        
        //if condition to check empty
        if emptyString.isEmpty {
            print("empty string")
        }
        
        
        //Multi String
        var multiString = "horse"
        multiString += " and monkey"
        print(multiString)
        
        
        
        //working with characters
        //for loop for printing character form string
        for character in multiString {
            print(character)
        }
        
        //Character
        let markCharacter : Character = "!"   //single character
        print(markCharacter)
        
        
        //array of characters
        let multiCharacter : [Character] = ["H", "E", "L", "L", "O"]
        print(multiCharacter)
        let stringOfCharacter = String(multiCharacter)
        print(stringOfCharacter)
        
        
        //Concatenating Strings and Characters
        let oneStr = "Hello"
        let twoStr = "World"
        print(oneStr + twoStr)
        
        var name = "sai"
        name += twoStr
        print(name)
        
        name.append(oneStr)
        print(name)
        
        
        //String Interpolation
        let valueString = 3
        let printStr = "\(valueString) in times of 5 is \(valueString * 5)"
        print(printStr)
        //Counting Characters
        print(printStr.count)
        
        
        //Inserting and Removing elements
        var welcome = "hello"
        //Inserting at end
        welcome.insert("!", at: welcome.endIndex)
        print(welcome)
        
        //add before end index
        welcome.insert(contentsOf: "World", at: welcome.index(before: welcome.endIndex))
        print(welcome)
        
        //Remove
        welcome.remove(at: welcome.index(before: welcome.endIndex))
        print(welcome)
        
        let range = welcome.index(welcome.endIndex, offsetBy: -5) ..< welcome.endIndex
        welcome.removeSubrange(range)
        print(welcome)
        
        
        //Substrings
        let subStr = "Hello, World"
        let indexs = subStr.firstIndex(of: ",") ?? subStr.endIndex
        print(subStr[..<indexs])
        
        
        //if condition
        let oneType = "Hello"
        let twoType = "Hell"
        if oneType == twoType {
            print("Equal")
        } else {
            print("Not Equal")
        }
    }
    

    

}
