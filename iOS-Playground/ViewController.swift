//
//  ViewController.swift
//  iOS-Playground
//
//  Created by HYUNGHUI KIM on 19/04/2018.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import UIKit
import CocoaLumberjack

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DDLog.add(DDASLLogger.sharedInstance) // ASL = Apple System Logs

        DDLogVerbose("Verbose")
        DDLogDebug("Debug")
        DDLogInfo("Info")
        DDLogWarn("Warn")
        DDLogError("Error")
        print("really")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

