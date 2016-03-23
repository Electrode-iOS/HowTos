//
//  FirstViewController.swift
//  TalkingModules
//
//  Created by Brandon Sneed on 3/22/16.
//  Copyright © 2016 Electrode-iOS. All rights reserved.
//

import UIKit
import ELRouter

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func itemDetailAction(sender: AnyObject) {
        Router.sharedInstance.evaluate(["item", "1337", "detail"], animated: true)
    }
}

