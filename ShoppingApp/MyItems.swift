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
        
//
//        self.addItem(fechedImg: "2", fechedName: "Pretty ring", fechedPrice: 200.00, fechedNumber: 20)
//        self.addItem(fechedImg: "3", fechedName: "Rose gold ring", fechedPrice: 50.00, fechedNumber: 20)
//        self.addItem(fechedImg: "4", fechedName: "Wow bracelet", fechedPrice: 99.99, fechedNumber: 20)
    }
    
//    func addItem(fechedImg:String,fechedName:String,fechedPrice:Double, fechedNumber:Int){
//        items.append(Item(img:fechedImg, name:fechedName, price: fechedPrice, num:fechedNumber))
//    }
    

}
