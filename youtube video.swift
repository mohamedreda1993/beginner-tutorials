// first oben storyboard then import webview from component and put constarain and made it in half of view controller
// second open view controler and drag web view in it and then write code in viewcontroller
//
//  ViewController.swift
//  youtube video
//
//  Created by mohamed on 2/10/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mywebview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // implement the fun and put the code of video
        getvideo(videocode: "kAREtxveO8s")
    }
    // func to get the video from youtube
    func getvideo(videocode:String)
    {
        let url = URL(string: "http://www.youtube.com/embed/\(videocode)")
        mywebview.loadRequest(URLRequest(url: url!))
    }


}

