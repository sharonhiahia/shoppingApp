//
//  Cart.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/1/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation


class Cart {
    static let shared = Cart()
    
    var list = ["Nice bracelet": 0,
                       "Pretty ring": 0,
                       "Rose gold ring": 0,
                       "Wow bracelet": 0]
    init(){
    }
    
    func updateCart(_ key:String, _ num: Int){
        print("passed in: " + key + "\(num)")
        
        var value:Int = list[key]!
        value += num
        print("new value \(value)")
        list[key] = value
    }
    
    
}

