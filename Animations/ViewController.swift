//
//  ViewController.swift
//  Animations
//
//  Created by Shree on 5/10/16.
//  Copyright (c) 2016 CompName. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true

    @IBOutlet weak var puppyImage: UIImageView!
    
    @IBAction func updateImage(sender: AnyObject)
    {
        if(isAnimating == true)
        {
            timer.invalidate()
            isAnimating = false
        }
        else
        {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        
        if (counter == 6)
        {
            counter = 1
        }
        else
        {
            counter++
        }
        
        puppyImage.image = UIImage(named: "frame\(counter).png")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func viewDidLayoutSubviews() {
        
        puppyImage.frame = CGRectMake(100, 20, 0, 0)
        
        
    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.puppyImage.frame = CGRectMake(100, 20, 100, 200)
            
        })
    }
    */
}










