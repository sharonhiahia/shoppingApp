//
//  ShoppingCartViewController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/1/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation
import UIKit

//receiver

//class ShoppingCartViewController: UIViewController,ChangeCartDelegate{
class ShoppingCartViewController: UIViewController{
    var theItems = MyItems()
    
    var list = [UILabel]()
    var keys = [String]()
    let tot = UILabel.init()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        
        instanciateLables()
        //initUILabels()


        tot.frame = CGRect(x: 150, y: 400, width: 300, height: 50)

        tot.text = "Total: 0.00"
        tot.font = UIFont(name:"verdana", size: 30)
        tot.textColor = .black
        tot.textAlignment = .left
        self.view.addSubview(tot)
        getTotal()
    }
    
    func instanciateLables(){

        for l in list{
            l.removeFromSuperview()
        }
        
        list = []
        var i = 0
        
        for k in Cart.shared.list{
            if k.value != 0 {
                let l = UILabel.init()
                list.append(l)
                
                l.frame = CGRect(x: 30, y: i * 50 + 120, width: 330, height: 50)
                
                let num = k.value
                l.text = k.key + "        \(num)"
                
                l.font = UIFont(name:"verdana", size: 25)
                l.textColor = .black
                l.textAlignment = .left
                
                self.view.addSubview(l)
                i += 1
            }
        }
    }
    
    func getTotal(){
        var sum:Double = 0
        for kvp in Cart.shared.list{
            if(kvp.value != 0){
                for j in 0 ..< theItems.items.count{
                    if theItems.items[j].itemName == kvp.key {
                        let num:Int = kvp.value
                        sum += theItems.items[j].itemPrice * Double(num)
                        print(sum)
                    }
                }
            }
        }
        tot.text = "Total: \(sum)"
    }
    

    @IBAction func checkout(_ sender: Any) {
        for l in list{
            //l.text = " "
            l.removeFromSuperview()
        }
        list = []
        Cart.shared.cleanCart()
        tot.text = "Total: 0.0"
    }
    
}
