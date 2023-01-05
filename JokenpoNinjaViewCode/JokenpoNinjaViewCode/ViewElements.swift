//
//  ViewElements.swift
//  JokenpoNinjaViewCode
//
//  Created by user218968 on 7/6/22.
//

import Foundation
import UIKit

class ViewElements: UIViewController {
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        titleLabel.text = "Jokenpo"
        titleLabel.textColor = .white
        return titleLabel
    }()
    
    let stoneButton: UIButton = {
        let stoneButton = UIButton()
        stoneButton.setImage(UIImage(named: "0"), for: .normal)
        return stoneButton
    }()
    
    let paperButton: UIButton = {
        let paperButton = UIButton()
        paperButton.setImage(UIImage(named: "2"), for: .normal)
        return paperButton
    }()
    
    let scissorsButton: UIButton = {
        let scissorsButton = UIButton()
        scissorsButton.setImage(UIImage(named: "1"), for: .normal)
        return scissorsButton
    }()

    lazy var buttonsStackView: UIStackView = {
        let buttonStackView = UIStackView(arrangedSubviews: [stoneButton, paperButton, scissorsButton])
        buttonStackView.backgroundColor = .cyan
        buttonStackView.spacing = 35
        return buttonStackView
    }()
    
    let playerActionEffect: UIImageView = {
        let actionEffect = UIImageView()
        return actionEffect
    }()
    
    let versusLabel: UILabel = {
        let versusLabel = UILabel()
        versusLabel.textColor = .white
        versusLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        versusLabel.text = "VS"
        versusLabel.textAlignment = .center
        return versusLabel
    }()
    
    let cpuActionEffect: UIImageView = {
        let cpuActionEffect = UIImageView()
        cpuActionEffect.image = UIImage(named: "1")
        return cpuActionEffect
    }()
    
    lazy var playStackView: UIStackView = {
        let playStackView = UIStackView(arrangedSubviews: [playerActionEffect, versusLabel, cpuActionEffect])
        playStackView.axis = .vertical
        playStackView.spacing = 20
        playStackView.backgroundColor = .cyan
        return playStackView
    }()
    
}
