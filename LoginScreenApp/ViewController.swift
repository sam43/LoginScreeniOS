//
//  ViewController.swift
//  LoginScreenApp
//
//  Created by Sayem on 3/7/17.
//  Copyright © 2017 Sayem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func loginButton(_ sender: Any) {
        validation()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //password.keyboardType = UIKeyboardType.numberPad
        
        /**Setting delegaate programatically**/
        //username.delegate = self  // same as control drag and connect
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func validation() {
        if username.text == "Sayem"
        {
            if password.text == "123" {
                //print("Logged in sucessful!")
                let controller = UIAlertController(title: "Login", message: "Logged in sucessfully!", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                controller.addAction(okAction)
                
                self.present(controller, animated: true, completion: nil)
                
            } else {
                print("Worng!")
            }
        }
        
    }
    
    
    //TextField Delegate methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField === username {
            password.becomeFirstResponder() //show the keyboard
        } else {
            textField.resignFirstResponder()  //to hide the keyboard
            //  textField.becomeFirstResponder //to show the keyboard
            validation()
        }

        return true
    }
}

