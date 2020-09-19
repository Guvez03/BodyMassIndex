//
//  ResultViewController.swift
//  Body Mass Index
//
//  Created by ahmet on 19.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var backView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var ibmResult : BMI?
    var deciBMI : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let ibm = ibmResult {
            
            resultLabel.text = deciBMI
            adviceLabel.text = ibm.advice
            backView.backgroundColor = ibm.color
            
        }
        
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
