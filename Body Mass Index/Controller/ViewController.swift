//
//  ViewController.swift
//  Body Mass Index
//
//  Created by ahmet on 18.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    var calculaterBrain = CalculaterBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        var height = String(format: "%0.2f", arguments: [Float(sender.value)])
        heightLabel.text = "\(height)cm"
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        var weight = Int(sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        // boya ve kiloya erişmek için sliderın outlet özelliğini kullandık.Diğer türlü global değişken oluşturup sliderlar içersinde atayıp ulaşabilirdik.
        
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
        
        
        calculaterBrain.calculater(weight:weight,height:height)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.deciBMI = calculaterBrain.getBMIValue()
            destinationVC.ibmResult = calculaterBrain.bmiValue
            
        }
    }
}

