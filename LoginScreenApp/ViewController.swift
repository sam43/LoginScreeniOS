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
        
        if username.text == "Sayem"
        {
            if password.text == "123" {
                print("Logged in sucessful!")
            } else {
                print("Worng!")
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        password.keyboardType = UIKeyboardType.numberPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()  //to hide the keyboard
        return true
    }
}

