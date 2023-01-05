//
//  ViewController.swift
//  Lifecycle
//
//  Created by user218968 on 5/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool){
        
        self.view.backgroundColor = UIColor.red
        super.viewWillAppear(animated)
        
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.white
        super.viewDidAppear(animated)
        
        print(#function)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
                print(#function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    
}

