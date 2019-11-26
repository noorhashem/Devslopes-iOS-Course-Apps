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
    
    var avatarName = "profileDefault"
    var avatarColor = "[0.5,0.5,0.5,1]"
    
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
        
        guard let username = usernameTxt.text, usernameTxt.text != "" else {
            return
        }
        
        AuthService.instance.registerAccount(email: email, password: password, completion: { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        print("Account Registered & logged in Successfully")
                        AuthService.instance.createUser(name: "potato", email: "potato@hotmail.com", avatarName: self.avatarName, avatarColor: self.avatarColor) { (success) in
                            if success {
                                print(DataService.instance.name + "is registered with id")
                                //self.performSegue(withIdentifier: "UNWIND", sender: nil)
                            }
                            
                        }
                        
                        
                    }
                   
                })
                
            }
        })
        
        //TODO: MOVE BACK TO CHANNELS WITH LOGGED IN STATUS 
    }
    


}
