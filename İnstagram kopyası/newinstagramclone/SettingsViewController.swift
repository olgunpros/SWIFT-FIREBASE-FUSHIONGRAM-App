//
//  SettingsViewController.swift
//  newinstagramclone
//
//  Created by Olgun ‏‏‎‏‏‎ on 7.11.2023.
//

import UIKit
import Firebase
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutClicked(_ sender: Any) {
        /* do{
         try Auth.auth().signOut()
         self.performSegue(withIdentifier: "toViewController", sender: nil)
         
         }catch {
         print("Error")
         }
         */
        
        
        self.performSegue(withIdentifier: "toViewController", sender: nil)
        
    }

}
