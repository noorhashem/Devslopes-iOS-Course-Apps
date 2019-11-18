//
//  CategoryCell.swift
//  coder-swag
//
//  Created by McNoor's  on 11/2/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!

    @IBOutlet weak var categoryLabel: UILabel!
    

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
        
    }
}
