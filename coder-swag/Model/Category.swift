//
//  Category.swift
//  coder-swag
//
//  Created by muhyunkim on 2018. 5. 4..
//  Copyright © 2018년 muhyunkim. All rights reserved.
//

import Foundation

struct Category {
    
    // 조회는 가능하는 외부에서 값설정은 안되도록 하는 것
    private(set) public var title: String
    private(set) public var imageName: String
    
    // 초기화 (이름을 변수와 같이 하는 것이 좋은 습관)
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
