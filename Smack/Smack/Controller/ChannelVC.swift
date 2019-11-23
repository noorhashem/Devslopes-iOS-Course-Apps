//
//  ChannelVC.swift
//  Smack
//
//  Created by McNoor's  on 11/23/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width-60
        self.revealViewController()?.frontViewShadowColor = #colorLiteral(red: 1, green: 0.851505816, blue: 0.2098344266, alpha: 1)
        self.revealViewController()?.frontViewShadowOpacity = 0.5
        
    }
  

}
