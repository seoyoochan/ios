//
//  ViewController.swift
//  Storing Images
//
//  Created by Seo Yoochan on 6/19/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var downloadImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = NSURL(string: "http://affordablecatanddoghospital.com/cat/images/stories/slide/cats-two.jpg")
//        
//        let urlRequest = NSURLRequest(URL: url!)
//        
//        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
//            response, data, error in
//            
//            if error != nil {
//                
//                println("there was an error")
//            
//            } else {
//                
//                let image = UIImage(data: data)
//                
////                self.downloadImage.image = image
//                
//                var documentDirectory:String?
//                var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
//                
//                if paths.count > 0 {
//                    documentDirectory = paths[0] as? String
//                    
//                    var savePath = documentDirectory! + "/cat.jpg"
//                    
//                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
//                    
//                    self.downloadImage.image = UIImage(named: savePath)
//                    
//                }
//                
//                
//            }
//        })
        
        var documentDirectory:String?
        var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        
        if paths.count > 0 {
            documentDirectory = paths[0] as? String
            
            var savePath = documentDirectory! + "/cat.jpg"
            
            
            self.downloadImage.image = UIImage(named: savePath)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

