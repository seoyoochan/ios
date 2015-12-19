//
//  DribbbleAPI.swift
//  iShots
//
//  Created by Seo Yoochan on 10/15/15.
//  Copyright © 2015 yoochan. All rights reserved.
//

import Foundation


class DribbbleAPI {
    let accessToken = "6d23de112fd5859e7d5658e6b41eee5f1e76291e3327882017457352c56e61a9"
    
    func loadShots(completion: ((AnyObject) -> Void)!) {
        let url = "https://api.dribbble.com/v1/shots?access_token=" + accessToken
        
        let session = NSURLSession.sharedSession()
        let shotsURL = NSURL(string: url)
        
        let task = session.dataTaskWithURL(shotsURL!) {
            (data, resposne, error) -> Void in
            
            if error != nil {
              print(error!.localizedDescription)
            } else {
                
                do {
    
                    let shotsData = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)

                    
                    var shots = [Shot]()

                    for shot in shotsData as! NSArray {
                        let shot = Shot(data: shot as! NSDictionary)
                        shots.append(shot)
                        
                    }
                    
                    if shots.count > 0 {
                        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.rawValue), 0)){
                            
                            dispatch_async(dispatch_get_main_queue()){
                                completion(shots)
                            }
                        }
                    }
                    
      
                
                
                } catch {
                }
            }
        }
        
        task.resume()
        
    
    }
    
    
}