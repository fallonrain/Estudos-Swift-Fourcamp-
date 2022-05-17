//
//  ViewController.swift
//  Review
//
//  Created by user218968 on 5/3/22.
//

import UIKit



class ViewController: UIViewController {

    var nome: String = ""
    
    @IBOutlet weak var textFieldName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        print("===============================")
        
        
    }

    @IBAction func buttonName(_ sender: UIButton) {
        if let name = self.textFieldName.text {
             nome = name
            print(nome)
        }
        
    }
    
}

