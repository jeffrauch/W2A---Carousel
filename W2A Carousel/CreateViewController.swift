//
//  CreateViewController.swift
//  W2A Carousel
//
//  Created by Jeff Rauch on 10/23/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    @IBOutlet weak var createScrollView: UIScrollView!
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var buttonParentView: UIView!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        createScrollView.contentSize = createScrollView.frame.size
        createScrollView.contentInset.bottom = 100
        createScrollView.delegate = self
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -90
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            
            // Scroll the scrollview up
            self.createScrollView.contentOffset.y = self.createScrollView.contentInset.bottom
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func didPressCheckBox(_ sender: AnyObject) {
        checkBoxButton.isSelected = !checkBoxButton.isSelected
    }
    


}
