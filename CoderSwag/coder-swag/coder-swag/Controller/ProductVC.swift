//
//  ProductVC.swift
//  coder-swag
//
//  Created by McNoor's  on 11/4/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    private(set) public var products = [Product]()
    
    @IBOutlet weak var ProductsCollection : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProductsCollection.delegate = self
        ProductsCollection.dataSource = self
    }
    
    func initProducts(category : Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateView(for: product)
            return cell
        }
        else{
            return ProductCell()
        }
    }
    
    
    

  

}
