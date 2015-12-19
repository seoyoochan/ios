//
//  ViewController.swift
//  iShots
//
//  Created by Seo Yoochan on 10/15/15.
//  Copyright © 2015 yoochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let api = DribbbleAPI()
        api.loadShots(nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

