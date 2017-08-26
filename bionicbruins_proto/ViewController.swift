//
//  ViewController.swift
//  bionicbruins_proto
//
//  Created by user128030 on 6/3/17.
//  Copyright © 2017 user128030. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    var username = ""
    var password = ""
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTF.delegate = self
        self.passwordTF.delegate = self
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        
        view.addGestureRecognizer(tap)
        
        let borderUsername = CALayer()
        let borderPassword = CALayer()
        let width = CGFloat(3.0)
        borderUsername.borderColor = UIColor.white.cgColor
        borderUsername.frame = CGRect(x: 0, y: usernameTF.frame.size.height - width, width:  usernameTF.frame.size.width, height: usernameTF.frame.size.height)
        
        borderUsername.borderWidth = width
        usernameTF.layer.addSublayer(borderUsername)
        usernameTF.layer.masksToBounds = true
        
        borderPassword.borderColor = UIColor.white.cgColor
        borderPassword.frame = CGRect(x: 0, y: passwordTF.frame.size.height - width, width:  passwordTF.frame.size.width, height: passwordTF.frame.size.height)
        
        borderPassword.borderWidth = width
        passwordTF.layer.addSublayer(borderPassword)
        passwordTF.layer.masksToBounds = true
    }
    
    @IBAction func invokeLogin(_ sender: UIButton) {
        username = usernameTF.text!
        password = passwordTF.text!
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}





