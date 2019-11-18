//
//  ProductCell.swift
//  coder-swag
//
//  Created by McNoor's  on 11/3/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func updateView(for productCell : Product){
        productImage.image = UIImage(named: productCell.imageName)
        productTitle.text = productCell.title
        productPrice.text = productCell.price
    }
}
