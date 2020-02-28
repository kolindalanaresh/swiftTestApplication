//
//  ActionSheetViewController.swift
//  sample
//
//  Created by admin on 28/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class ActionSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onClickActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title: "Approve", style: .default , handler:{ (UIAlertAction)in
            print("User click Approve button")
        }))

        alert.addAction(UIAlertAction(title: "Edit", style: .default , handler:{ (UIAlertAction)in
            print("User click Edit button")
        }))

        alert.addAction(UIAlertAction(title: "Delete", style: .destructive , handler:{ (UIAlertAction)in
            print("User click Delete button")
        }))

        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler:{ (UIAlertAction)in
            print("User click Dismiss button")
        }))

        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
   
     

    @IBAction func onClickAlertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAlertTwoButtonTapped(_ sender: UIButton) {

        // create the alert
        let alert = UIAlertController(title: "UIAlertController", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: UIAlertController.Style.alert)

        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: { action in

            // do something like...
            print("continue")

        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlertThreeButtonTapped(_ sender: UIButton) {

        // create the alert
        let alert = UIAlertController(title: "Notice", message: "Lauching this missile will destroy the entire universe. Is this what you intended to do?", preferredStyle: UIAlertController.Style.alert)

        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Remind Me Tomorrow", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Launch the Missile", style: UIAlertAction.Style.destructive, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlertController(_ sender: Any) {
        // 1.
        var usernameTextField: UITextField?
        var passwordTextField: UITextField?

        // 2.
        let alertController = UIAlertController(
            title: "Log in",
            message: "Please enter your credentials",
            preferredStyle: .alert)

        // 3.
        let loginAction = UIAlertAction(
        title: "Log in", style: .default) {
            (action) -> Void in

            if let username = usernameTextField?.text {
                print(" Username = \(username)")
            } else {
                print("No Username entered")
            }

            if let password = passwordTextField?.text {
                print("Password = \(password)")
            } else {
                print("No password entered")
            }
        }

        // 4.
        alertController.addTextField {
            (txtUsername) -> Void in
            usernameTextField = txtUsername
            usernameTextField!.placeholder = "<Your username here>"
        }

        alertController.addTextField {
            (txtPassword) -> Void in
            passwordTextField = txtPassword
            passwordTextField?.isSecureTextEntry = true
            passwordTextField?.placeholder = "<Your password here>"
        }

        // 5.
        alertController.addAction(loginAction)
        present(alertController, animated: true, completion: nil)

    }

}
