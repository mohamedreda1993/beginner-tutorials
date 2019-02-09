//
//  ViewController.swift

//  Created by mohamed on 1/9/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
var time = 0
    //timer
    var timer=Timer()
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
   
    @IBAction func startb(_ sender: Any) {
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseb(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetb(_ sender: Any) {
        timer.invalidate()
        time = 0
      label.text="0"
    }
    @objc func action()
    {
        time += 1
        label.text=String(time)
    }
}
