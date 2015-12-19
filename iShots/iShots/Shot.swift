//
//  Shot.swift
//  iShots
//
//  Created by Seo Yoochan on 10/15/15.
//  Copyright © 2015 yoochan. All rights reserved.
//

import Foundation

class Shot {
    var id: Int!
    var title: String!
    var description: String!
    var commentCount: Int!
    var likesCount: Int!
    var viewsCount: Int!
    var commentUrl: String!
    var imageUrl: String!
    var imageData: NSData?
    
    init(data: NSDictionary){
        self.id = data["id"] as! Int
        self.commentCount = data["comments_count"] as! Int
        self.likesCount = data["likes_count"] as! Int
        self.viewsCount = data["views_count"] as! Int
        self.commentUrl = getStringFromJSON(data, key: "comments_url")
        self.title = getStringFromJSON(data, key: "title")
        self.description = getStringFromJSON(data, key: "description")
        let images = data["images"] as! NSDictionary
        self.imageUrl = getStringFromJSON(images, key: "normal")
        
        
    }
    
    func getStringFromJSON(data: NSDictionary, key: String) -> String {
        
        if let info = data[key] as? String {
           return info
        }
        
        return ""
    }
}