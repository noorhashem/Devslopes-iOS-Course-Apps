//
//  Constants.swift
//  Smack
//
//  Created by McNoor's  on 11/24/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import Foundation

//User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Aliases
typealias CompletionHandler = (_ Success: Bool)->()


//URLs
let BASE_URL = "https://smacky-smack-app.herokuapp.com/v1/"
let REGISTER_USER = "\(BASE_URL)account/register"
let LOG_USER = "\(BASE_URL)account/login"
let CREATE_USER = "\(BASE_URL)user/add"

//HEADERS

let HEADER = [
    "Content-Type" : "application/json; charset = utf-8"
]
