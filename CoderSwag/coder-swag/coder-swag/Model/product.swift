//
//  product.swift
//  coder-swag
//
//  Created by McNoor's  on 11/3/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import Foundation

struct Product {
    private (set) public var title : String
    private(set) public var price : String
    private(set) public var imageName : String
    
    init(title: String, price : String, imageName: String){
        self.title = title
        self.imageName = imageName
        self.price = price
    }
    
}
