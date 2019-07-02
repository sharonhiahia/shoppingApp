//
//  MyItems.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/1/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation

class MyItems{
    static let shared = MyItems()
    
    
    var items = [Item]()
    
    init() {
        
        items.append(Item(img: "1", name: "Nice bracelet", price: 100.00, num: 20))
        
        items.append(Item(img: "2", name: "Pretty ring", price: 200.00, num: 20))
        
        items.append(Item(img: "3", name: "Rose gold ring", price: 50.00, num: 20))
        
        items.append(Item(img: "4", name: "Wow bracelet", price: 99.99, num: 20))

    }
    
}
