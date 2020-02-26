//
//  PickerViewController.swift
//  sample
//
//  Created by admin on 26/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var multiPicker: UIPickerView!
    var pickerData: [String] = []
    var multipickerData: [[String]] = [[String]]()

    @IBOutlet weak var picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

       pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
        
        picker.delegate = self
        picker.dataSource = self
        
        //multi picker
        // Connect data:
        multiPicker.delegate = self
        multiPicker.dataSource = self
        
        // Input the data into the array
        multipickerData = [["1", "2", "3", "4"],
        ["a", "b", "c", "d"],
        ["!", "#", "$", "#"],
        ["w", "x", "y", "z"]]
    }

    //Picker delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == multiPicker {
            return 4
        }
        return 1
    }
    // Number of columns of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == multiPicker {
            return multipickerData.count
        }
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == multiPicker {
            return multipickerData[component][row]
        }
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 20
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == multiPicker {
            print("selected item: \(multipickerData[component][row])")
        }
        print("selected item: \(pickerData[row])")
    }
}
