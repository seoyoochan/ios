//
//  ViewController.swift
//  SwipesAndShakes
//
//  Created by Seo Yoochan on 6/17/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["chirp", "gun", "horses", "jungle"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake {}
        
        var randNum = Int(arc4random_uniform(UInt32(sounds.count)))
        
        
        var filePath = NSBundle.mainBundle().pathForResource(sounds[randNum], ofType: "mp3")
        
        var error:NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: filePath!), error: &error)
        
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

