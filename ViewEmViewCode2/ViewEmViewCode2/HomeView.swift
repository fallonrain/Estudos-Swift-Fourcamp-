//
//  HomeView.swift
//  ViewEmViewCode2
//
//  Created by user218968 on 5/25/22.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    private let title: String
    lazy var titleLabel: UILabel = {
        let label = FourLabel(title: title)
        return label
    }()
    lazy var containerStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [leftStack, rightStack])
        stack.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.distribution = .fillEqually
        stack.spacing = 20
       return stack
    }()
    
    lazy var leftStack: UIStackView = {
        let bottomView = UIView()
        bottomView.backgroundColor = .orange
        let stack = UIStackView(arrangedSubviews: [titleLabel, groupStack, bottomView])
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    let groupStack: UIStackView = {
       let firstView = UIView()
        firstView.backgroundColor = .yellow
        firstView.layer.cornerRadius = 10
        firstView.layer.masksToBounds = true
        
        let secondView = UIView()
        secondView.backgroundColor = .green
        
        let thirdView = UIView()
        thirdView.backgroundColor = .purple
        
        let stack = UIStackView(arrangedSubviews: [firstView, secondView, thirdView])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }()
    
    let rightStack: UIStackView = {
       let firstView = UIView()
        firstView.backgroundColor = .blue
        return UIStackView(arrangedSubviews: [firstView])
    }()
    
    init(title: String) {
        self.title = title
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension HomeView: ViewCode {
    func buildViewHierarchy() {
        addSubview(containerStack)
    }
    
    func addConstrains() {
        containerStack.translatesAutoresizingMaskIntoConstraints = false
        containerStack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerStack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerStack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        groupStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func additionalConfiguration() {
        backgroundColor = .red
    }
    
    
}
