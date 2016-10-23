//
//  TimelineViewController.swift
//  W2A Carousel
//
//  Created by Jeff Rauch on 10/21/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var timelineImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timelineScrollView.contentSize = timelineImageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
