//
//  CategoryCell.swift
//  coder-swag
//
//  Created by muhyunkim on 2018. 5. 3..
//  Copyright © 2018년 muhyunkim. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    // 셀을 채워주는 기능 (셀은 셀 스스로 자신을 처리해야 함. VC에서 셀을 설정하게 하면 안 됨) 
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}
