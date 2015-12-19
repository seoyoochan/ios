//
//  ViewController.swift
//  Webview Demo
//
//  Created by Seo Yoochan on 6/19/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string: "http://www.daum.net")
        
        var request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
        
//        var html = "<html><head></head><body><h1>hello world!</h1></body></html>"
//        
//        webView.loadHTMLString(html, baseURL: nil)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

