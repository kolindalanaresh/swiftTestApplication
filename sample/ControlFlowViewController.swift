//
//  ControlFlowViewController.swift
//  sample
//
//  Created by naresh.ko on 20/01/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class ControlFlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //For-In Loops Array's
        
        let names = ["Hi", "Hello", "World"]
        for name in names {
            print(name)
        }
        
        //For in with dictionary's
        let subjects = ["TEL" : "Telugu", "HIN" : "Hindi", "ENG" : "English"]
        for (key, value) in subjects {
            print(key, value)
        }
        
        
        //for loop using index
        for index in 1...5 {
            print(index)
        }
        
        
        //for no index type
        var val1 = 3
        let val2 = 2
        for _ in 1...5 {
            val1 *= val2
        }
        print(val1)
        
        
        //using stride
        let minutes = 60
        let values1 = 2
        for stridevalue in stride(from: 0, to: minutes, by: values1) {
            print(stridevalue)
        }
        
        
        //Conditional Statements
        //IF
        var temperatureInFahrenheit = 30
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        }

        
        temperatureInFahrenheit = 40
        if temperatureInFahrenheit <= 32 {
            print("It's very cold. Consider wearing a scarf.")
        } else {
            print("It's not that cold. Wear a t-shirt.")
        }

        
        //WHILE
        let someChar : Character = "z"
        switch someChar {
        case "a":
            print(someChar)
        case "z":
            print(someChar)
        default:
            print(someChar)
        }
        
        switch someChar {
        case "a","b","c","d","e","f":
            print(someChar)
        case "g","h","i","j","k","l":
            print(someChar)
        case "m","n","o","p","q","r":
            print(someChar)
        default:
            print(someChar)
        }
        
        //interval matching
        let matchCount = 62
        switch matchCount {
        case 1..<5:
            print("between 1 to 5")
        case 6..<25:
            print("between 6 to 25")
        case 26..<50:
            print("between 26 to 50")
        case 51..<100:
            print("between 51 to 100")
        default:
            print(matchCount)
        }
        
        
        //Tuples
        let somePoint = (1,1)
        switch somePoint {
        case (0, 0):
            print("\(somePoint) is at the origin")
        case (_, 0):
            print("\(somePoint) is on the x-axis")
        case (0, _):
            print("\(somePoint) is on the y-axis")
        case (-2...2, -2...2):
            print("\(somePoint) is inside the box")
        default:
            print("\(somePoint) is outside of the box")
        }
        
        // Continue
        let someString = "i like objective c"
        var otherString = ""
        let characterToRemove: [Character] = ["a","e","i","o","u"," "]
        for charact in someString {
            if characterToRemove.contains(charact) {
                continue
            }
            otherString.append(charact)
        }
        print(otherString)
        
        
        //Check App version availability
        if #available(iOS 10.0 , *) {
           print("iOS 10")    //greater than and equal to
        } else {
           print("Others")    //less than
        }
    }

}
