//
//  ViewController.swift
//  animations
//
//  Created by Seo Yoochan on 6/9/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var animating = true

    @IBOutlet var image: UIImageView!
    
    @IBAction func update(sender: AnyObject) {
        
        if animating == true {
          timer.invalidate()
          animating = false
        } else {
          timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
          animating = true
        }

        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }

    func doAnimation() {
        
        if counter == 22 {
            counter = 0
        } else {
            counter++
        }
        
        image.image = UIImage(named: "tmp-\(counter).gif")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // init but not shown yet
    override func viewDidLayoutSubviews() {
//        image.center = CGPointMake(image.center.x - 400, image.center.y)
//        image.alpha = 0
//        image.frame = CGRectMake(100, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool){
        UIView.animateWithDuration(1, animations: { () -> Void in
//            self.image.center = CGPointMake(self.image.center.x + 400, self.image.center.y)
//            
//            self.image.alpha = 1
//            
//            self.image.frame = CGRectMake(100, 20, 100, 200)
            
        })
    }

}

