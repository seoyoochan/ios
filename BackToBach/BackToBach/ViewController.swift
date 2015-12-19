//
//  ViewController.swift
//  BackToBach
//
//  Created by Seo Yoochan on 6/17/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func stop(sender: AnyObject) {
        player.stop()
        player.currentTime = 0
    }

    @IBAction func pause(sender: AnyObject) {
        player.pause()
        println("paused.. current time: \(player.currentTime)")
    }
    
    @IBOutlet var sliderValue: UISlider!
    
    @IBAction func sliderChanged(sender: AnyObject) {
        
        player.volume = sliderValue.value
    }
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var audioPath = NSBundle.mainBundle().pathForResource("bach_bouree", ofType: "mp3")
        
        var error:NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath!), error: &error)
        
        println("played.. current time: \(player.currentTime)")
    

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

