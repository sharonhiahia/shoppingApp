//
//  ListItemsViewController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class ListItemsViewController: UIViewController {
    
    @IBOutlet weak var itemView1: UIView!
    
    @IBOutlet weak var itemView2: UIView!
    
    @IBOutlet weak var itemView3: UIView!
    
    @IBOutlet weak var itemView4: UIView!
    

    var views = [UIView]()
    
    var myItmes = MyItems()
    //var allItems = [Item]()
    
    var sendingTag = 0
//    var sendingImg = ""
//    var sendingName = ""
//    var sendingPrice = ""
    
    override func viewDidLoad() {
        views = [itemView1,itemView2,itemView3,itemView4]
        for v in views{
            updatePage(view: v)
        }
        super.viewDidLoad()
        retriveFromDatabase()
        
        
        
//        // ----
//        let messageDB = Database.database().reference().child("Items")
//        let messageDictionary = ["ItemName": "Nice bracelet", "ItemPrice": 100.0, "ItemPic": "1", "ItemAmount": 50] as [String : Any]
//
//
//        messageDB.childByAutoId().setValue(messageDictionary){
//            error,reference in
//
//            guard error == nil else {
//                print("error has occured on creating data")
//                return
//            }
//            print("data sent")
//        }

    }
    
    
    func retriveFromDatabase(){
        let itemsDB = Database.database().reference().child("Items")
        
        print(itemsDB.childByAutoId())
        itemsDB.observe(.childAdded) { (snapshot) in
            let snapshotValue = snapshot.value as! Dictionary<String,Any>
            let amount = snapshotValue["ItemAmount"]!
            let itemName = snapshotValue["ItemName"]!
            let itemImg = snapshotValue["ItemPic"]!
            let price = snapshotValue["ItemPrice"]!
            
            var itemPrice:Double = 0
            if let x = price as? Double {
                itemPrice = x
            }
            itemPrice = Double(round(itemPrice * 100)/100)
            
            var itemAmount:Int = 0
            if let y = amount as? Int {
                itemAmount = y
            }
            
           
            
            print(itemName ,  itemImg, itemPrice, itemAmount)
            print(type(of: itemName), type(of: itemImg), type(of: itemPrice),type(of: itemAmount))
        }
        
    }

    func updatePage(view:UIView){

        var imgView = UIImageView()
        var name = UILabel()
        var price = UILabel()
        
        let tag = view.tag
        let item = myItmes.items[tag - 1]

        imgView = view.subviews[0] as! UIImageView
        name = view.subviews[1] as! UILabel
        price = view.subviews[2] as! UILabel
        
        imgView.image = UIImage(named:"\(item.itemImg)")
        name.text = item.itemName
        price.text = String(item.itemPrice)
        
    }
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        sendingTag = sender.tag
        performSegue(withIdentifier: "goToItemPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToItemPage"{
            let distinationVC = segue.destination as! ItemPageController
            
            distinationVC.theItems = myItmes
            distinationVC.receivedTag = sendingTag
        }
    }
    
    
}
