//
//  ViewController.swift
//  window-shopper
//
//  Created by McNoor's  on 10/20/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtF: TransparentTextFields!
    
    @IBOutlet weak var priceTxtF: TransparentTextFields!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    @IBOutlet weak var clearCalculator: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBttn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBttn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBttn.setTitle("Calculate", for: .normal)
        calcBttn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBttn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxtF.inputAccessoryView = calcBttn
        priceTxtF.inputAccessoryView = calcBttn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        clearCalculator.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageTXT = wageTxtF.text, let priceTXT = priceTxtF.text{
            if let wage = Double(wageTXT), let price = Double(priceTXT){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                clearCalculator.isHidden = false

                
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
                
            }
        }
        
    }

    @IBAction func clearCalculator(_ sender: Any) {
        clearCalculator.isHidden = true
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtF.text = ""
        priceTxtF.text = ""
       
        
        
    }
    
}

