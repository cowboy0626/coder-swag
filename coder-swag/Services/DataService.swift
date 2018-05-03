//
//  DataService.swift
//  coder-swag
//
//  Created by muhyunkim on 2018. 5. 4..
//  Copyright © 2018년 muhyunkim. All rights reserved.
//

import Foundation

class DataService {
    
    // 싱글턴 패턴 : static 키워드를 통해 클래스가 객체를 1개만 메모리에 만들도록 해서 데이터가 꼬이지 않도록 하는 패턴
    static let instance = DataService()
    
    // 데이터셋 (실제로는 서버로부터 가져와야 함)
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    // 카테고리 조회
    func getCategories() -> [Category] {
        return categories
    }
    
}
