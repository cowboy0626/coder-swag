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
    
    // 모자 가상데이터
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodies Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodies Blue", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodies Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Light Grey", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studio Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]() // []만하면 데이터 타입도 없고, 실제 생성도 되지 않음.
    
    // 카테고리 조회
    func getCategories() -> [Category] {
        return categories
    }
    
    // 상품데이터 조회
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "SHITRS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
       return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
}
