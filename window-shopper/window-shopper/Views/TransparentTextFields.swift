//
//  TransparentTextFields.swift
//  window-shopper
//
//  Created by McNoor's  on 10/21/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit
@IBDesignable

class TransparentTextFields: UITextField {
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height/2 - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5821542116, green: 0.5821542116, blue: 0.5821542116, alpha: 0.5762521404)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        currencyLbl.layer.cornerRadius = 7.0
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        currencyLbl.clipsToBounds = true
        
        
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2488495291)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let place = placeholder {
            let p = NSAttributedString(string: place, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ])
            attributedPlaceholder = p
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
    }

}
