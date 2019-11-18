//
//  ButtonBorder.swift
//  app-swoosh
//
//  Created by McNoor's  on 10/15/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class ButtonBorder: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }


}
