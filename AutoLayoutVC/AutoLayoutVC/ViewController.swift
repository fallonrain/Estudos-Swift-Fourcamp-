//
//  ViewController.swift
//  AutoLayoutVC
//
//  Created by user218968 on 5/24/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        
        view.addSubview(redView)
        
        redView.preencherSuperview(padding: .init(top: 50, left: 50, bottom: 50, right: 50))
        
        redView.centralizarSuperView(size: .init(width: 200, height: 200))
        
        redView.preencher(top: view.topAnchor,
                          leading: view.leadingAnchor,
                          trailing: nil,
                          bottom: nil,
                          padding: .init(top: 50, left: 30, bottom: 100, right: 50),
                          size: .init(width: 200, height: 500))
        
        view.addSubview(blueView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        redView.widthAnchor.constraint(equalToConstant: view.bounds.width / 2).isActive = true
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let horizontalStackView = UIStackView(arrangedSubviews: [redView, blueView])
        horizontalStackView.distribution = .fillEqually
        
        let stackView: UIStackView = UIStackView(arrangedSubviews: [horizontalStackView, yellowView])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }


}

