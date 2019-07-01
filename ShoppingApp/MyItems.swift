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
    
    func addItem(fechedImg:String,fechedName:String,fechedPrice:String){
        items.append(Item(img:fechedImg, name:fechedName, price: fechedPrice))
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
