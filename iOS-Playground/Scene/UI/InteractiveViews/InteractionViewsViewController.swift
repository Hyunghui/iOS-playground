//
//  InteractionViewsViewController.swift
//  iOS-Playground
//
//  Created by HYUNGHUI KIM on 5/14/18.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import UIKit

class InteractionViewsViewController: UIViewController {

    @IBOutlet weak var labelSegmentControl: UILabel!
    @IBOutlet weak var labelSlider: UILabel!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var labelActivityIndicator: UILabel!
    @IBOutlet weak var labelProgress: UILabel!
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var segmentedConrol: UISegmentedControl!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progress: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            labelSegmentControl.text = "Left selected"
        case 1:
            labelSegmentControl.text = "Right selected"
        default:
            fatalError("Wrong segment selected")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        labelSlider.text = "slide value: \(currentValue), progress: \(Float(currentValue) / 100))"
        progress.setProgress(Float(currentValue) / 100, animated: false)
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            labelSwitch.text = "On"
            activityIndicator.startAnimating()
            
        } else {
            labelSwitch.text = "Off"
            activityIndicator.stopAnimating()
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        labelStepper.text = Int(sender.value).description
    }
}
