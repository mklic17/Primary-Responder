//
//  SecondVIewController.swift
//  PrimaryResponder
//
//  Created by Mitchell Klich on 4/28/16.
//  Copyright © 2016 College Tuition. All rights reserved.
//

import UIKit

class SecondVIewController: UIViewController {
    
    var docController:UIDocumentInteractionController!

 
    @IBAction func suggestion(sender: AnyObject) {
        if let url = NSURL(string: "http://www.MitchellKlich.com/Form.html"){
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
    @IBAction func about(sender: AnyObject) {
        if let url = NSURL(string: "http://www.MitchellKlich.com/"){
                  UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func book(sender: AnyObject) {
        if let url = NSURL(string: "http://www.instructorscorner.org/media/resources/LGcandidates/LG_PM.pdf"){
            UIApplication.sharedApplication().openURL(url)
        }
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
