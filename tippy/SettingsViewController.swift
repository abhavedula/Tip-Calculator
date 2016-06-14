//
//  SettingsViewController.swift
//  tippy
//
//  Created by Abha Vedula on 6/14/16.
//  Copyright © 2016 Abha Vedula. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var tipDefault: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tipPercentages = [0.18, 0.20, 0.25]
    
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(tipPercentages[tipDefault.selectedSegmentIndex], forKey: "default_tip_percentage")
        defaults.synchronize()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
