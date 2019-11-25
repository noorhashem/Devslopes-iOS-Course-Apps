//
//  CreateUserVC.swift
//  Smack
//
//  Created by McNoor's  on 11/24/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class CreateUserVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func changeBGColorPressed(_ sender: Any) {
    }
    
    
    @IBAction func createUserPressed(_ sender: Any) {
        guard let email = emailTxt.text, emailTxt.text != "" else {
            return
        }
        
        guard let password = passwordTxt.text, passwordTxt.text != "" else {
            return
        }
        
        AuthService.instance.registerAccount(email: email, password: password) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    print("User Registered & logged in Successfully" + "       " + AuthService.instance.authToken)
                })
                
            }
        }
        
        //TODO: MOVE BACK TO CHANNELS WITH LOGGED IN STATUS 
    }
    


}
