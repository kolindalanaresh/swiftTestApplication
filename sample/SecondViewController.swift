//
//  SecondViewController.swift
//  sample
//
//  Created by naresh.ko on 31/12/19.
//  Copyright © 2019 naresh.ko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var btnGetData: UIButton!
    let username = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickButtonData(_ sender: Any) {
        
        print(username)
    }
    
}
