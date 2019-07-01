//
//  ItemPageController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation
import UIKit


class ItemPageController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    var recerivedImg:String?
    var recerivedName:String?
    var recerivedPrice:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = UIImage(named: recerivedImg ?? "1")
        name.text = recerivedName
        price.text = recerivedPrice
    }
    
    func getData(){
        
    }
    

}
