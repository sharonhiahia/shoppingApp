//
//  ItemPageController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation
import UIKit

//sender

//protocol ChangeCartDelegate:AnyObject {
//    func userAddedItems(name:String, num:Int)
//}

class ItemPageController: UIViewController {
    
    //var delegate : ChangeCartDelegate?
    
    @IBOutlet weak var numToAdd: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    var receivedTag:Int?
    var theItems = MyItems()
    
    
    override func viewDidLoad() {

        let imgstr = theItems.items[receivedTag! - 1].itemImg
        let itemname = theItems.items[receivedTag!-1].itemName
        let itemp = theItems.items[receivedTag!-1].itemPrice
        super.viewDidLoad()
        
        //img.image = UIImage(named: recerivedImg ?? "1")
        //name.text = recerivedName
        //price.text = recerivedPrice

        
        img.image = UIImage(named: imgstr)
        name.text = itemname
        price.text = String(itemp)
        
    }
    

    @IBAction func decreaseNum(_ sender: Any) {
        var num:Int = Int(numToAdd.text ?? "1") ?? 1
        if  num > 1{
            num -= 1
            numToAdd.text = String(num)
        }
    }
    
    @IBAction func increaseNum(_ sender: Any) {
        
        var num:Int = Int(numToAdd.text ?? "1") ?? 1
        if  num < 99{
            num += 1
            numToAdd.text = String(num)
        }
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let numstr = numToAdd.text!
        let num:Int = Int(numstr)!
        print(num)
        let itemname = theItems.items[receivedTag!-1].itemName
        print(itemname)
        Cart.shared.updateCart(itemname, num)
        
        
        
    
    }
    
    
//    @IBAction func goToCart(_ sender: Any) {
//
//
//        delegate?.userAddedItems(name: itemname, num: num)
//        print(itemname+"\(num)")
//        print(delegate)
//    }
}
