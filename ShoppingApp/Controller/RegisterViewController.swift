//
//  RegisterViewController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/6/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func registerTapped(_ sender: Any) {
        SVProgressHUD.show()
        
        let email = username.text!
        let pw = password.text!
        
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: email, password: pw) {
            authResult, error in
            
            guard let user = authResult?.user, error == nil else {
                print("error has occured")
                SVProgressHUD.dismiss()
                return
            }
            print("\(user.email!) created")
            SVProgressHUD.dismiss()
            self.performSegue(withIdentifier: "gotoShopping", sender: self)
        }
    }
    
}
