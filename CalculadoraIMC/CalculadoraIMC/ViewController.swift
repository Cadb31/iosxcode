//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Carlos on 24/04/2017.
//  Copyright © 2017 Woowrale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textPeso: UITextField!
    @IBOutlet weak var textEstatura: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textPeso.delegate = self
        textEstatura.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backgroundTap(sender: UIControl){    
        textPeso.resignFirstResponder()
        textEstatura.resignFirstResponder()
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    

    @IBAction func calcularIMC() {
    
        var totalIMC: Double
        
        let peso: Double?
        peso = Double(self.textPeso.text!)!
    
        let estatura: Double = Double(self.textEstatura.text!)!
        
        totalIMC = peso!/(estatura * estatura)
        print("Resultado: \(totalIMC)")
    }
}

