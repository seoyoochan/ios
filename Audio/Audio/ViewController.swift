//
//  ViewController.swift
//  Audio
//
//  Created by Seo Yoochan on 6/13/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var timer:NSTimer!
    
    var currentTime = NSTimeInterval()
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(sender: AnyObject) {
        
        var audioPath = NSBundle.mainBundle().pathForResource("music", ofType: "mp3")!
        
        var error:NSError? = nil // hold an error
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath), error: &error)
        
        if error == nil {
            player.play()
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "checkTime", userInfo: nil, repeats: false)
            currentTime = NSDate.timeIntervalSinceReferenceDate()
            
        } else {
            println(error)
        }
        
    }
    
    func checkTime(){
        
        println(currentTime)
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        timer.invalidate()
        println("paused \(currentTime)")
    }
    
    
    @IBAction func sliderChanged(sender: AnyObject) {
        
        player.volume = sliderValue.value
    }
    
    @IBOutlet var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

