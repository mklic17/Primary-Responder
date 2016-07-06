//
//  FifthViewController.swift
//  PrimaryResponder
//
//  Created by Mitchell Klich on 5/9/16.
//  Copyright © 2016 College Tuition. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    
    @IBOutlet var WebContent: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://www.MitchellKlich.com")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
        if let urlContent = data {
             let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
             dispatch_async(dispatch_get_main_queue(), { () -> Void in
             self.WebContent.loadHTMLString(String(webContent!), baseURL: nil)
            })
         } else {
            // Show error message
            }
        }
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}