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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instanciateLables()
        initUILabels()
        
        
        tot.frame = CGRect(x: 150, y: 400, width: 300, height: 50)
        
        tot.text = ""
        tot.font = UIFont(name:"verdana", size: 30)
        tot.textColor = .black
        tot.textAlignment = .left
        self.view.addSubview(tot)
        
        getTotal()

    }
    
    func instanciateLables(){
        for k in Cart.shared.list{
            if k.value != 0{
                keys.append(k.key)
            }
        }
       
        for _ in 0..<keys.count{
            
            let l = UILabel.init()
            list.append(l)
        }

    }
    
    func initUILabels(){
        for l in 0..<keys.count{
            list[l].frame = CGRect(x: 10, y: l * 40 + 100, width: 300, height: 30)
            let num = Cart.shared.list[keys[l]]
            list[l].text = keys[l] + " \(num!)"
            list[l].font = UIFont(name:"verdana", size: 20)
            list[l].textColor = .black
            list[l].textAlignment = .left
            self.view.addSubview(list[l])
        }
    }
    
    func getTotal(){
        var sum:Double = 0
        for k in keys{
            for j in 0 ..< theItems.items.count{
                if theItems.items[j].itemName == k {
                    let num:Int = Cart.shared.list[k]!
                    sum += theItems.items[j].itemPrice * Double(num)
                    print(sum)
                }
            }
            
        }
        total(sum)
    }
    
    
    func total(_ total:Double){
        
        tot.text = "Total: \(total)"
        
    }
    
    func upDateUILabels(){
        
    }
    
    @IBAction func checkout(_ sender: Any) {
        for l in list{
            l.text = ""
        }
        tot.text = "Total: \(0.00)"
        
        
    }
    
    //let vc =
    
//    func userAddedItems(name: String, num: Int) {
//        print(name+" \(num)")
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToCart"{
//            let dVC = segue.destination as!
//        }
//    }
}
