//
//  Item.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/1/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation


class Item {
    var itemImg:String
    var itemName:String
    var itemPrice:Double
    var itemNum:Int

    init(img:String, name:String, price: Double, num:Int) {
        itemImg = img
        itemName = name
        itemPrice = price
        itemNum = num
    }
//    var itemImg : String = ""
//    var itemName : String = ""
//    var itemPrice : Double = 0
//    var itemAmount : Int = 0

}
