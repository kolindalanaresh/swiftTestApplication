//
//  FunctionsViewController.swift
//  sample
//
//  Created by naresh.ko on 21/01/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class FunctionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(getData(person: "MINI"))
        getNonMethod(person: "Hello !")
        print(directreturnMethod())
        print(greet(greeting: "HI", iSGreeted: true))
        print(getInt(greeting: "Hello India"))
        print(multiValues(val: [1, 2, 3]))
        let valuesAry = multiValues(val: [1, 2, 3])
        print("\(valuesAry.initial) and \(valuesAry.second)")
        print(getImplicit(for: "Dave"))
        otherMethod(initial: 1, Finial: 2)
        argument(argumentlab: "Hello D")
        print(omit("Hiii"))
        parameterDefaultVal(withoutDefault: 12, withDefault: 1)

    }
    //Non Return Func or Method
    func getNonMethod(person: String)  {
        print(person)
    }
    //Return Method or Func
    func getData(person : String) -> String {
        let variable = "Hello" + " " + person + " " + "World"
        return variable
    }
    
    //Returning Direct value
    func directreturnMethod() -> String {
        return "Hello !!"
    }
    
    //func with two parameters
    func greet(greeting : String , iSGreeted : Bool) -> String {
        if iSGreeted {
            return greeting
        } else {
            return greeting
        }
    }
    
    //func return Int
    func getInt(greeting : String) -> Int {
        return greeting.count
    }
    
    //Func return Mutiple values
    func multiValues(val : [Int]) -> (initial : Int , second : Int) {
        let val1 = val[0]
        let val2 = val[0]
        return (val1, val2)
    }
    
    
    //Functions With an Implicit Return
    func getImplicit(for greet : String) -> String {
        return "Hello " + greet
    }
    
    //two values without return
    func otherMethod(initial : Int, Finial : Int) {
        print("\(initial) and \(Finial)")
    }
    
    //Specifying Argument Labels
    func argument(argumentlab label : String) {
        print(label)
    }
    
    func greet(person: String, from hometown: String) -> String {
        return "Hello \(person)!  Glad you could visit from \(hometown)."
    }

    //Omitting Argument Labels
    func omit(_ label : String) -> String {
        return "Hellow " + label
    }
    
    //Default Parameter Values
    func parameterDefaultVal(withoutDefault : Int , withDefault : Int = 12) {
        print(withoutDefault)
        print(withDefault)
    }
        
}
