//
//  ViewController.swift
//  IMC
//
//  Created by Thiago Fernandes on 5/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultView: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        if let weight = Double(weightTextField.text!), let height = Double(heightTextField.text!) {
            imc = weight / pow(height, 2)
            
            showImcResults() 
        }
    }
    func showImcResults() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = "abaixo"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo"
        case 18.5..<25:
            result = "Peso ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
        }
        resultLabel.text = "\(Int(imc)): \(result)"
        resultImageView.image = UIImage(named: image)
        resultView.isHidden = false
        view.endEditing(true)
    }
}

