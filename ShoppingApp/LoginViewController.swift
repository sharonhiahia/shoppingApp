//
//  LoginViewController
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: Any) {
        let mainTabCtler = storyboard?.instantiateInitialViewController() as! MainTabController
        
        present(mainTabCtler, animated: true, completion: nil)
    }
    
}

