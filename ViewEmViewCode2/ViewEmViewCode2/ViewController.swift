//
//  ViewController.swift
//  ViewEmViewCode2
//
//  Created by user218968 on 5/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    let homeView = HomeView(title: "Fourcamp")

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func loadView() {
        view = homeView
    }

}
