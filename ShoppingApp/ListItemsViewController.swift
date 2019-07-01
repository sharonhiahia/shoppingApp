//
//  ListItemsViewController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation
import UIKit

class ListItemsViewController: UIViewController {
    
    @IBOutlet weak var itemView1: UIView!
    
    @IBOutlet weak var itemView2: UIView!
    
    @IBOutlet weak var itemView3: UIView!
    
    @IBOutlet weak var itemView4: UIView!
    


    
    var views = [UIView]()
    
    var myItmes = MyItems()
    
    var sendingTag = 0
    var sendingImg = ""
    var sendingName = ""
    var sendingPrice = ""
    
    override func viewDidLoad() {
        initialItems()
        views = [itemView1,itemView2,itemView3,itemView4]
        for v in views{
            updatePage(view: v)
        }
        super.viewDidLoad()
        
        
    }
    
    // items should be fechied through database
    func initialItems() {
        myItmes.addItem(fechedImg: "1", fechedName: "Nice bracelet", fechedPrice: "$100.00")
        myItmes.addItem(fechedImg: "2", fechedName: "Pretty ring", fechedPrice: "$200.00")
        myItmes.addItem(fechedImg: "3", fechedName: "Rose gold ring", fechedPrice: "$50.00")
        myItmes.addItem(fechedImg: "4", fechedName: "Wow bracelet", fechedPrice: "$99.99")
    }
    
    
    func updatePage(view:UIView){

        var imgView = UIImageView()
        var name = UILabel()
        var price = UILabel()
        
        let tag = view.tag
        let item = myItmes.items[tag - 1]
        
        print(tag)
        print(view.subviews[0])
        print(view.subviews[1])
        print(view.subviews[2])
        
        imgView = view.subviews[0] as! UIImageView
        name = view.subviews[1] as! UILabel
        price = view.subviews[2] as! UILabel
        
        imgView.image = UIImage(named:"\(item.itemImg)")
        name.text = item.itemName
        price.text = item.itemPrice
        
    }
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        print(sender.tag)

        sendingImg = myItmes.items[sender.tag - 1].itemImg
        sendingName = myItmes.items[sender.tag - 1].itemName
        sendingPrice = myItmes.items[sender.tag - 1].itemPrice
        
        performSegue(withIdentifier: "goToItemPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToItemPage"{
            let distinationVC = segue.destination as! ItemPageController
            distinationVC.recerivedImg = sendingImg
            distinationVC.recerivedName = sendingName
            distinationVC.recerivedPrice = sendingPrice
            
        }
    }
    
    
}
