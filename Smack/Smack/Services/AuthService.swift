//
//  AuthService.swift
//  Smack
//
//  Created by McNoor's  on 11/24/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    
    static let instance = AuthService()
    let defaults = UserDefaults.standard
    
    var isLoggedIn :Bool {
        get{
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        
        set{
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken : String {
        get{
            return defaults.value(forKey: TOKEN_KEY) as! String
            
//            if let token = defaults.value(forKey: TOKEN_KEY) {
//                 return token as! String
//            } else{
//                return "nill tokken"
//            }
           
        }
        
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    var userEmail : String {
        get{
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set{
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerAccount(email : String , password : String, completion : @escaping CompletionHandler){
        let lowerCaseEmail = email.lowercased()
        let header = HEADER
        let body = [
            "email" : lowerCaseEmail,
            "password" : password
        ]
        Alamofire.request(REGISTER_USER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString( completionHandler: { (response) in
            
            if response.result.error == nil {
                completion(true)
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        })
        
    }
    
    func loginUser (email : String , password: String, completion : @escaping CompletionHandler){
        let lowerCaseEmail = email.lowercased()
        let header = HEADER
        let body = [
            "email" : lowerCaseEmail,
            "password" : password
        ]
        
        Alamofire.request(LOG_USER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON( completionHandler:
            { (response) in
            if response.result.error == nil {
                completion(true)
                self.isLoggedIn = true
                if let json = response.result.value as? [String : Any] {
                    if let email = json["user"] as? String {
                        self.userEmail = email
                        
                    }
                    if let token = json["token"] as? String {
                        self.authToken = token
                    }
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        })
        
        
        
    }
    

}
