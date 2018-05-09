//
//  ProductsVC.swift
//  coder-swag
//
//  Created by muhyunkim on 2018. 5. 9..
//  Copyright © 2018년 muhyunkim. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private(set) public var products = [Product]() // 빈 배열을 미리 만들어 두어야 함
    
    // Outlets
    @IBOutlet weak var productsCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 전달된 카테고리 타이틀 인자를 받아서 상품목록 확인 (데이터준비)
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    

}
