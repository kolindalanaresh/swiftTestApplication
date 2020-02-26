//
//  ViewController.swift
//  sample
//
//  Created by naresh.ko on 31/12/19.
//  Copyright © 2019 naresh.ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.placeholder = "Enter Name"
        passwordTF.placeholder = "Enter Password"
        lblUserName.text = ""
        btnSubmit .setTitle("SUBMIT", for: .normal)
        btnSubmit.backgroundColor = UIColor.red
        btnSubmit .setTitleColor(UIColor.white, for: .normal)
        btnSubmit .addTarget(self, action: #selector(onClickLogin(_:)), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //hide Navigation bar
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func onClickLogin(_ sender: UIButton!) {
        
        //moving to xib from Navigation controller
        let vc = WebViewController(nibName: "WebViewController", bundle: nil)
        self.navigationController!.pushViewController(vc, animated: true)



        /*
        let name = nameTF.text ?? ""
        let password = passwordTF.text ?? ""
        if !name.isEmpty {
            if !password.isEmpty {
                if name == "kukatpally" {
                    if  let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
//                        vc.username = name
                        self .present(vc, animated: true, completion: nil)
                    }
                }
            }
        }
        */
    }
}

