//
//  ViewController.swift
//  DogAge
//
//  Created by Оксана Нефедова on 25/01/2019.
//  Copyright © 2019 Оксана Нефедова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogAgeTextField: UITextField!
    
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        if   dogAgeTextField.text != ""{
            let  dogAge = Int( dogAgeTextField.text!)
            humanAgeLabel.text = "In human years: \(calculateHumanAge(dogAge: dogAge!))"
        }else{
            humanAgeLabel.text = "Please input dog age"
        }
        
        
        
    }
    
    func calculateHumanAge(dogAge:Int) -> Int{
        var humanAge = 0
        
        if dogAge == 0{
            return dogAge
        } else if dogAge == 1{
            humanAge = 15
        } else if dogAge == 2{
            humanAge = 24
        } else {
            humanAge = (dogAge - 2) * 4 + 24
        }
        return humanAge
    }

}
