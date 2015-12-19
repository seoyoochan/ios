//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Seo Yoochan on 6/4/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    func result() {
        count++
        println(count)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

