//
//  Item.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/1/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation


class Item {
    var itemImg = ""
    var itemName = ""
    var itemPrice = ""
    
    init(img:String, name:String, price: String) {
        itemImg = img
        itemName = name
        itemPrice = price
    }
    
}
