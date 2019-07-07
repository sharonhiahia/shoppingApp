//
//  LoginViewController
//  ShoppingApp
//
//  Created by Rong Xiao on 6/30/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: Any) {
        SVProgressHUD.show()
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: username.text!, password: password.text!) {
            authResult, error in
            
            guard let user = authResult?.user, error == nil else {
                print("error has occured on login")
                SVProgressHUD.dismiss()
                return
            }
            print("\(user.email!) logged in")
            SVProgressHUD.dismiss()
            self.performSegue(withIdentifier: "fromRegisterToShopping", sender: self)
        }
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        
    }
}

