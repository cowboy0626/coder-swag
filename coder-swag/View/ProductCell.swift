//
//  ProductCell.swift
//  coder-swag
//
//  Created by muhyunkim on 2018. 5. 9..
//  Copyright © 2018년 muhyunkim. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    // 셀세팅 함수작성 
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
