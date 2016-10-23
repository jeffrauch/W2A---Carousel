//
//  IntroViewController.swift
//  W2A Carousel
//
//  Created by Jeff Rauch on 10/21/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introScrollView: UIScrollView!
    @IBOutlet weak var introImageView: UIImageView!
    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    // Arrays of initial transform values for tiles
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        introScrollView.contentSize = introImageView.frame.size
        introScrollView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let offset = Float(introScrollView.contentOffset.y)
        
        // TILE 1
        let image1TransformX = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[0]), r2Max: 0)
        let image1TransformY = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[0]), r2Max: 0)
        let image1Scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[0]), r2Max: 1)
        let image1Rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[0]), r2Max: 0)
        
        tile1View.transform = CGAffineTransform(translationX: CGFloat(image1TransformX), y: CGFloat(image1TransformY))
        tile1View.transform = tile1View.transform.scaledBy(x: CGFloat(image1Scale), y: CGFloat(image1Scale))
        tile1View.transform = tile1View.transform.rotated(by: CGFloat(Double(image1Rotation) * M_PI / 180))
        
        // TILE 2
        let image2TransformX = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[1]), r2Max: 0)
        let image2TransformY = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[1]), r2Max: 0)
        let image2Scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[1]), r2Max: 1)
        let image2Rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[1]), r2Max: 0)
        
        tile2View.transform = CGAffineTransform(translationX: CGFloat(image2TransformX), y: CGFloat(image2TransformY))
        tile2View.transform = tile2View.transform.scaledBy(x: CGFloat(image2Scale), y: CGFloat(image2Scale))
        tile2View.transform = tile2View.transform.rotated(by: CGFloat(Double(image2Rotation) * M_PI / 180))
        
        // TILE 3
        let image3TransformX = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[2]), r2Max: 0)
        let image3TransformY = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[2]), r2Max: 0)
        let image3Scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[2]), r2Max: 1)
        let image3Rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[2]), r2Max: 0)
        
        tile3View.transform = CGAffineTransform(translationX: CGFloat(image3TransformX), y: CGFloat(image3TransformY))
        tile3View.transform = tile3View.transform.scaledBy(x: CGFloat(image3Scale), y: CGFloat(image3Scale))
        tile3View.transform = tile3View.transform.rotated(by: CGFloat(Double(image3Rotation) * M_PI / 180))
        
        // TILE 4
        let image4TransformX = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[3]), r2Max: 0)
        let image4TransformY = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[3]), r2Max: 0)
        let image4Scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[3]), r2Max: 1)
        let image4Rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[3]), r2Max: 0)
        
        tile4View.transform = CGAffineTransform(translationX: CGFloat(image4TransformX), y: CGFloat(image4TransformY))
        tile4View.transform = tile4View.transform.scaledBy(x: CGFloat(image4Scale), y: CGFloat(image4Scale))
        tile4View.transform = tile4View.transform.rotated(by: CGFloat(Double(image4Rotation) * M_PI / 180))
        
        // TILE 5
        let image5TransformX = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[4]), r2Max: 0)
        let image5TransformY = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[4]), r2Max: 0)
        let image5Scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[4]), r2Max: 1)
        let image5Rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[4]), r2Max: 0)
        
        tile5View.transform = CGAffineTransform(translationX: CGFloat(image5TransformX), y: CGFloat(image5TransformY))
        tile5View.transform = tile5View.transform.scaledBy(x: CGFloat(image5Scale), y: CGFloat(image5Scale))
        tile5View.transform = tile5View.transform.rotated(by: CGFloat(Double(image5Rotation) * M_PI / 180))
        
        // TILE 6
        let image6TransformX = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(xOffsets[5]), r2Max: 0)
        let image6TransformY = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(yOffsets[5]), r2Max: 0)
        let image6Scale = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(scales[5]), r2Max: 1)
        let image6Rotation = convertValue(inputValue: CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: CGFloat(rotations[5]), r2Max: 0)
        
        tile6View.transform = CGAffineTransform(translationX: CGFloat(image6TransformX), y: CGFloat(image6TransformY))
        tile6View.transform = tile6View.transform.scaledBy(x: CGFloat(image6Scale), y: CGFloat(image6Scale))
        tile6View.transform = tile6View.transform.rotated(by: CGFloat(Double(image6Rotation) * M_PI / 180))
        

        
    }
    


}
