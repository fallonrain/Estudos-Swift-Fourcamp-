//
//  ViewController2.swift
//  Lifecycle
//
//  Created by user218968 on 5/18/22.
//


import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Controller2")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        print("WillAppear Controller2")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        print("DidAppear Controller2")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("WillDisappear Controller2")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        
        
    }
}
