//
//  ViewController.swift
//  catYear
//
//  Created by Seo Yoochan on 6/2/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var age: UITextField!

    @IBOutlet var result: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        var enteredAge = age.text.toInt()
        
        if enteredAge != nil {
            
            var catYears = enteredAge! * 7
            
            result.text = "Your cat is \(catYears) in cat years"
            
        } else {
            result.text = "Please enter your cat age in years"
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

