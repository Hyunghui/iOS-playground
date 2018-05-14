//
//  SwiftTest1ViewController.swift
//  iOS-Playground
//
//  Created by HYUNGHUI KIM on 5/11/18.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import UIKit

class SwiftTest1ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelResult.text = "Hello world"
        
        var intA = 1
        var intB = 2
        
        swapTwoInts(&intA, &intB)
        
        print("\(intA) \(intB)")
        labelResult.text = "\(intA) \(intB)"
        
    }
    
    func swapTwoInts(_ a: inout Int, _ b: inout Int) {
        let temp = a
        a = b
        b = temp
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
