//
//  ViewController.swift
//  Calculator
//
//  Created by Carlos on 25/04/2017.
//  Copyright © 2017 Woowrale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        var textCurrentDisplay = display.text!
        
        var operadores: Array<String> = Array()
        //var operation: Double = 0.0
        
        print("textCurrentDisplay: ", textCurrentDisplay)
        
        switch digit {
        case "+":
            operadores.append(textCurrentDisplay)
            operadores.append(digit)
        case "-":
            operadores.append(textCurrentDisplay)
        case "*":
            operadores.append(textCurrentDisplay)
        case "/":
            operadores.append(textCurrentDisplay)
        case "%":
            operadores.append(textCurrentDisplay)
        case "+/-":
            operadores.append(textCurrentDisplay)
        case "AC":
            textCurrentDisplay = "0"
            display.text = textCurrentDisplay
        case "=":
            print("Equals", operadores.count)
            for operador in operadores {
                print("operation: ", operador)
            }
        default:
            display.text = textCurrentDisplay + digit
            print("touched \(digit) digit")
        }
        
    }
}

