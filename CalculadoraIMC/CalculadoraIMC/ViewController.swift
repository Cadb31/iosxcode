//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Carlos on 24/04/2017.
//  Copyright © 2017 Woowrale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textPeso: UITextField!
    @IBOutlet weak var textEstatura: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

