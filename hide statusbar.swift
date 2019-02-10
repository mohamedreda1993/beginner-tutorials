//
//  ViewController.swift
//  hide status bar
//
//  Created by mohamed on 2/10/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }

}
