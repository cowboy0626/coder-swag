//
//  ViewController.swift
//  coder-swag
//
//  Created by muhyunkim on 2018. 5. 3..
//  Copyright © 2018년 muhyunkim. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 프로토콜 구현 
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    // 프로토콜 3종 구현
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    
    // ProductsVC로 연결하기
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 카테고리 타이틀 정의
        let category = DataService.instance.getCategories()[indexPath.row]
        // 링크연결
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            // back button 수정
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            // 개발모드(빌드타임)에서 타입확인하기
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
        }
    }
    

}

