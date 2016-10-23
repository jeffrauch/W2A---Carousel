//
//  SettingsViewController.swift
//  W2A Carousel
//
//  Created by Jeff Rauch on 10/22/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!
    
    let alertController = UIAlertController(title: "", message: "Are you sure you want to sign out?", preferredStyle: .actionSheet)
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

         settingsScrollView.contentSize = settingsImageView.frame.size
        
        let logoutAction = UIAlertAction(title: "Log Out", style: .destructive) { (action) in
            self.performSegue(withIdentifier: "logoutSegue", sender: nil)
        }
        // add the logout action to the alert controller
        alertController.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            

        }
        // add the cancel action to the alert controller
        alertController.addAction(cancelAction)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressClose(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didPressSignOut(_ sender: AnyObject) {
        present(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
    }

}
