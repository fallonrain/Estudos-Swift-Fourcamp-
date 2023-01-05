//
//  View.swift
//  JokenpoNinjaViewCode
//
//  Created by user218968 on 7/6/22.
//

import UIKit

class View: ViewElements {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        view.addSubviews([titleLabel, buttonsStackView, playStackView])
        
        stoneButton.addTarget(self, action: #selector(stoneButtonAction), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(paperButtonAction), for: .touchUpInside)
        scissorsButton.addTarget(self, action: #selector(scissorsButtonAction), for: .touchUpInside)
        
        view.addConstraints([
            
            titleLabel.constraintToItemInside(.top, view.safeAreaLayoutGuide),
            titleLabel.constraintToItemInside(.centerX, view),
            
            buttonsStackView.constraintToItemOutside(.top, titleLabel, 30),
            buttonsStackView.constraintToItemInside(.centerX, view),
            stoneButton.heightAnchor.constraint(equalToConstant: 64),
            stoneButton.widthAnchor.constraint(equalToConstant: 64),
            paperButton.heightAnchor.constraint(equalToConstant: 64),
            paperButton.widthAnchor.constraint(equalToConstant: 64),
            scissorsButton.heightAnchor.constraint(equalToConstant: 64),
            scissorsButton.widthAnchor.constraint(equalToConstant: 64),
            
            playerActionEffect.widthAnchor.constraint(equalToConstant: 128),
            playerActionEffect.heightAnchor.constraint(equalToConstant: 128),
            cpuActionEffect.widthAnchor.constraint(equalToConstant: 128),
            cpuActionEffect.heightAnchor.constraint(equalToConstant: 128),
            playStackView.constraintToItemOutside(.top, buttonsStackView, 40),
            playStackView.constraintToItemInside(.centerX, buttonsStackView),

            
        ])
    }

    @objc func stoneButtonAction() {
        
        playerActionEffect.image = UIImage(named: "0")
        
    }
    
    @objc func paperButtonAction() {
        
        playerActionEffect.image = UIImage(named: "2")

    }
    
    @objc func scissorsButtonAction() {
        
        playerActionEffect.image = UIImage(named: "1")

    }
    
}


