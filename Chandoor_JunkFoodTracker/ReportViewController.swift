//
//  ReportViewController.swift
//  Chandoor_JunkFoodTracker
//
//  Created by student on 3/7/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var ReportLBL: UITextView!
    @IBAction func ResetBTN(_ sender: Any) {
        AppDelegate.model.reset()
        ReportLBL.text = AppDelegate.model.combinedReport()
    }
    @IBAction func unwindFromTable(segue:UIStoryboardSegue){
        ReportLBL.text = AppDelegate.model.combinedReport()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
