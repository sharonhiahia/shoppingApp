//
//  MyItems.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/1/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation

class MyItems{
    
    var items = [Item]()
    
    init() {
        self.addItem(fechedImg: "1", fechedName: "Nice bracelet", fechedPrice: 100.00, fechedNumber: 20)
        self.addItem(fechedImg: "2", fechedName: "Pretty ring", fechedPrice: 200.00, fechedNumber: 20)
        self.addItem(fechedImg: "3", fechedName: "Rose gold ring", fechedPrice: 50.00, fechedNumber: 20)
        self.addItem(fechedImg: "4", fechedName: "Wow bracelet", fechedPrice: 99.99, fechedNumber: 20)
    }
    
    func addItem(fechedImg:String,fechedName:String,fechedPrice:Double, fechedNumber:Int){
        items.append(Item(img:fechedImg, name:fechedName, price: fechedPrice, num:fechedNumber))
    }
    
    func whichItem(num:Int) {
        if num < items.count {
        print("I am \(items[num].itemName)")
        }
        else{
            print("index out of range")
        }
    }

}
