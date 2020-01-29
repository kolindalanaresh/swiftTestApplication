//
//  CollectionTypesViewController.swift
//  sample
//
//  Created by naresh.ko on 20/01/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class CollectionTypesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Create an array
        var someInts = [Int]()
        print(someInts.count)
        
        //add one value
        someInts.append(3)
        print(someInts)
        
        //empty array
        someInts = []
        print(someInts)
        
        //creating array with default value
        var defaultArray = [3, 4]
        print(defaultArray) //value print
        print(defaultArray.count) //value count
        defaultArray.append(5)
        print(defaultArray) //value print
        print(defaultArray.count) //value count
        
        //create repeat array
        let threeArray = Array(repeating: 3, count: 3)
        print(threeArray)
        
        //Creating an Array by Adding Two Arrays Together
        let anotherArray = Array(repeating: 2, count: 2)
        let combineArray = threeArray + anotherArray
        print(combineArray)
        
        //create string array
        var stringArray : [String] = ["Man", "Hello", "World"]
        print(stringArray) //values
        print(stringArray.count) //count
        
        if stringArray.isEmpty {
            print("empty Array")
        } else {
            print("not empty")
        }
        
        //appending
        stringArray.append("Mark")
        print(stringArray)
        stringArray += ["Baking Powder"]
        print(stringArray)
        
        //first item of array
        print(stringArray[0])
        
        //list from range
        print(stringArray[2...4])
        
        //insert at index
        stringArray.insert("String", at: 0)
        print(stringArray)
        
        //remove at index
        stringArray.remove(at: 0)
        print(stringArray)
        
        //remove last object
        stringArray.removeLast()
        print(stringArray)
        
        //for loop
        for item in stringArray {
            print(item)
        }
    
        //Iterating Over an Array
        for (index, value) in stringArray.enumerated() {
            print("\(index) value is \(value)")
        }
            
        
        
        
        
        
        
        
        
        
        //Creating a Set with an Array Literal
        var setCharacterArray : Set<String> = ["Rock", "Classical", "Hip hop"]
        print(setCharacterArray)
        
        print(setCharacterArray.count) //count
        
        //check empty case
        if setCharacterArray.isEmpty {
            print("empty")
        } else {
            print("not empty")
        }
        
        //insert element
        setCharacterArray.insert("name")
        print(setCharacterArray)
        
        //remove element
        setCharacterArray.remove("name")
        print(setCharacterArray)
        
        
        //contains
        if setCharacterArray.contains("value") {
            print("available")
        } else {
            print("not available")
        }
        
        //for loop
        for item in setCharacterArray {
            print(item)
        }
        
        //for loop sorted order
        for item in setCharacterArray.sorted() {
            print(item)
        }
        
        
        //array with key and value
        var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        print(airports)
        print(airports.count)
        
        //if condition with empty check
        if airports.isEmpty {
            print("The airports dictionary is empty.")
        } else {
            print("The airports dictionary is not empty.")
        }
        
        
        //adding element
        airports["LHR"] = "London"
        print(airports)
        
        //replacing vlaue using key
        airports["LHR"] = "London Heathrow"
        print(airports)
        
        let airportName = airports["DUB"]
        print(airportName ?? "")
        
        airports["APL"] = "Apple International"
        print(airports)
        
        //removing element
        airports["APL"] = nil
        print(airports)
        
        //printing key and value
        for (key, value) in airports {
            print("\(key) value is \(value)")
        }
        
        //printing keys and values
        print(airports.keys)
        print(airports.values)
        
        //for loop of values
        for airportName in airports.values {
            print("Airport name: \(airportName)")
        }

        
    }


}
