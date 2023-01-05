//
//  ViewController.swift
//  LabelTextFieldViewCodeStoryboard
//
//  Created by user218968 on 7/11/22.
//

import UIKit

class ViewController: UIViewController {

    let labelMetodo1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .green
        label.text = "Metodo1"
        label.backgroundColor = .black
        
        return label
    }()
    
    let labelMetodo2: UILabel = {
        let label = UILabel(frame: CGRect(x: 110,
                                          y: 245,
                                          width: 100,
                                          height: 30))
        
        label.textColor = .systemOrange
        label.text = "Metodo2"
        label.backgroundColor = .black
        
        
        return label
    }()
        
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(labelMetodo1)
        view.addSubview(labelMetodo2)
       
        
        NSLayoutConstraint.activate([
            labelMetodo1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelMetodo1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        
        
        ])
      
    }


}

