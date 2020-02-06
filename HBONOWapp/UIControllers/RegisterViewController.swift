//
//  RegisterViewController.swift
//  HBONOWapp
//
//  Created by Yanik Perera on 1/30/20.
//  Copyright © 2020 Yanik Perera. All rights reserved.
//

import UIKit
import FirebaseAuth


class RegisterViewController: UIViewController {

    @IBOutlet weak var txtFName: UITextField!
    @IBOutlet weak var txtLName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtCPass: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_Register(_ sender: UIButton) {
        let validator = ValidateFields()
        
        if(validator.usernameValid(username: (txtEmail.text ?? "")) && validator.passwordValid(password: txtPassword.text ?? "")) {
            
            let alert = AlertDialog()
            
            Auth.auth().createUser(withEmail: txtEmail.text!, password: txtPassword.text!) {
                
                authResult, error in
                if ((error == nil)) {
                    
                    alert.showAlert(title: "Signed up successfully", message: "You have been successfully Signed up", buttonText: "Dashboard")
                    
                } else {
                    
                    alert.showAlert(title: "Error", message: "Error occured", buttonText: "Dashboard")
                }
                
                // ...
            }
            
        }else{
            
            let alert = AlertDialog()
            
            alert.showAlert(title: "Error", message: "Username or password is invalid", buttonText: "Register")
        }
    }
    
   

}
