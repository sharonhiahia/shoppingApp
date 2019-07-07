//
//  PersonViewController.swift
//  ShoppingApp
//
//  Created by Rong Xiao on 7/6/19.
//  Copyright © 2019 Rong Xiao. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class PersonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        SVProgressHUD.show()
        //TODO: Log in the user
        do{
            try Auth.auth().signOut()
            SVProgressHUD.dismiss()
            self.performSegue(withIdentifier: "gotoSignin", sender: self)
            //navigationController?.popToRootViewController(animated: true)
        }
        catch{
            // catch throw here.
            print("sign out error happened.")
            SVProgressHUD.dismiss()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
