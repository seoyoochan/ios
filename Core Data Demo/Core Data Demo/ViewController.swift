//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Seo Yoochan on 6/18/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject
        
        newUser.setValue("Kirsten", forKey: "username")
        newUser.setValue("pass2", forKey: "password")
        context.save(nil)
        
        var request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        
        request.predicate = NSPredicate(format: "username = %@", "Kirsten")
        
        var results = context.executeFetchRequest(request, error: nil)
        
        
        if results?.count > 0 {
            
            println(results)
            
            for result:AnyObject in results! {
                if let user = result.valueForKey("username") as? String {
                    if user == "Kirsten" {
//                        context.deleteObject(result as! NSManagedObject)
//                        
//                        println(user + " has been deleted")
                        
                        result.setValue("pass6", forKey: "password")
                    }
                }
            }
        } else {
          println("no result")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

