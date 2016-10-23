//
//  LoginViewController.swift
//  W2A Carousel
//
//  Created by Jeff Rauch on 10/21/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var loginNavBar: UIImageView!
 
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if loginScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    func keyboardWillHide(notification: NSNotification) {
        // Move the buttons back down to it's original position
        buttonParentView.frame.origin.y = buttonInitialY
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        loginScrollView.delegate = self
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -130
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            
            // Scroll the scrollview up
            self.loginScrollView.contentOffset.y = self.loginScrollView.contentInset.bottom
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The main view is about to appear...
    override func viewWillAppear(_ animated: Bool) {
        // Set initial transform values 20% of original size
        let transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        // Apply the transform properties of the views
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        // Set the alpha properties of the views to transparent
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    // The main view appeared...
    override func viewDidAppear(_ animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animate(withDuration: 0.3) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransform.identity
            self.loginNavBar.transform = CGAffineTransform.identity
            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }
    
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func didPressLogin(_ sender: AnyObject) {
        
        loginIndicator.startAnimating()
        loginButton.isSelected = true

        if emailField.text == "username" && passwordField.text == "password" {
            delay(2, closure: { () -> () in
                self.loginIndicator.stopAnimating()
                self.loginButton.isSelected = false
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            })
            
        } else {
            delay(2, closure: { () -> () in
                self.loginIndicator.stopAnimating()
                self.loginButton.isSelected = false
                
                let alertController = UIAlertController(title: "Invalid Email/Password", message: "Please try again", preferredStyle: .alert)

                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // handle response here.
                }

                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
            })
        }
    
    }

    

}
