//
//  ViewController.swift
//  Task 2b(2)
//
//  Created by Ahmed Hamed on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbltext: UITextField!
    @IBOutlet weak var rsult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rsult.text = ""
    }
    
    @IBAction func kelvinCalc(_ sender: Any) {
        let txtField = lbltext.text ?? ""
        let degree = Double(txtField) ?? 0.0
        if (degree <= 100){
            let res = "\(degree+273.1518) k"
            rsult.text = res
        }
        else {
            rsult.text="Enter Valid Temp"
        }
    }
    
    @IBAction func fehCalc(_ sender: Any) {
        let txtField = lbltext.text ?? ""
        let degree = Double(txtField) ?? 0.0
        if (degree <= 100){
            let res = "\((degree*9/5)+32) k"
            rsult.text = res
        }
        else {
            rsult.text="Enter Valid Temp"
        }
    }
}
