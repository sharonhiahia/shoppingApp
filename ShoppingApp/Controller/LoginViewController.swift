//
//  LoginViewController
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: Any) {
        //let mainTabCtler = storyboard?.instantiateInitialViewController() as! MainTabController
        
        //present(mainTabCtler, animated: true, completion: nil)
    }
    
    @IBAction func registerTapped(_ sender: Any) {
    }
}

