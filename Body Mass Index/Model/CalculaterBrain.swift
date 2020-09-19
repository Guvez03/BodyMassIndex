//
//  CalculaterBrain.swift
//  Body Mass Index
//
//  Created by ahmet on 19.09.2020.
//  Copyright © 2020 ahmet. All rights reserved.
//

import UIKit

struct CalculaterBrain {
    
    var bmiValue : BMI?
    // oluşturduğumuz BMI modelinden bir değişken oluşturduk.
    mutating func calculater(weight:Float , height : Float){
        
        let bmi = weight / (height * height)
        
        
        if bmi < 18.5 {
            
            bmiValue = BMI(value: bmi, color: UIColor.red , advice: "Biraz daha yemek yemelisin.")
            // oluşturduğumuz değişkene BMI türünden nesne oluşturarak veriler girdik.
            
        }
        else if bmi >= 18.5 && bmi <= 24.9 {
            bmiValue = BMI(value: bmi, color: UIColor.yellow , advice: "Vucut kitle indeksin normal sağlıklı besleniyorsun devam et.")
            
            
        }
        else if bmi > 18.5 {
            bmiValue = BMI(value: bmi, color: UIColor.green , advice: "Aşırı yemeyi durdurmalısın.")
        }
        
        
        
    }
    mutating func getBMIValue() -> String{
        
        if let bmiDeci = bmiValue {
            
            let bmiToDecimalString = String(format: "%.1f", bmiDeci.value) // burada dönüştürdüğümüz değeri başka bir değişkene atadık çünkü bmiValueya atasaydık type hatası alacaktık.
            
            return bmiToDecimalString
            
        }
        else{
            return "0.0"
        }
    }
    
}
