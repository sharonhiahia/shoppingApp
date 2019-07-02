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
//    var sendingImg = ""
//    var sendingName = ""
//    var sendingPrice = ""
    
    override func viewDidLoad() {
        views = [itemView1,itemView2,itemView3,itemView4]
        for v in views{
            updatePage(view: v)
        }
        super.viewDidLoad()

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
