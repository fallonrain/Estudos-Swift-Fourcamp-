//
//  ViewController.swift
//  TableView
//
//  Created by user218968 on 4/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "CardCell")
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cardCell: CardCell? = myTableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as? CardCell
        
        return cardCell ?? UITableViewCell ()
    }

}
