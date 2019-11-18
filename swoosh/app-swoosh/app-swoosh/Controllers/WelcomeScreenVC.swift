//  ViewController.swift
//  app-swoosh
//
//  Created by McNoor's  on 10/15/19.
//  Copyright © 2019 McNoor's . All rights reserved.


import UIKit

class WelcomeScreenVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swoosh.frame = CGRect(x: view.frame.size.width/2 - swoosh.frame.size.width / 2, y: 70, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        bgImage.frame = view.frame
    }
    @IBAction func BackBttn (unwindSegue: UIStoryboardSegue) {
        
    }


}

