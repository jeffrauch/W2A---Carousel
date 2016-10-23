//
//  WelcomeViewController.swift
//  W2A Carousel
//
//  Created by Jeff Rauch on 10/21/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var takeCarouselBtn: UIButton!
    
    func scrollViewDidEndDecelerating(_ welcomeScrollView: UIScrollView) {
        
        let page : Int = Int(round(welcomeScrollView.contentOffset.x / 320))
        
        pageControl.currentPage = page
        
        if page == 3 {
            
            pageControl.isHidden = true
            takeCarouselBtn.alpha = 1
        
        } else {
            
            pageControl.isHidden = false
            takeCarouselBtn.alpha = 0
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        takeCarouselBtn.alpha = 0
        
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 500)
        welcomeScrollView.delegate = self
        pageControl.numberOfPages = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
