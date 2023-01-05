//
//  TableViewController.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/4/22.
//

import UIKit

class TableViewController: UIViewController {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    let tableViewModel = TableViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        tableViewModel.adviceAPIRequest { result, error in
            if result
            {
                print("Data Ok")
                self.myTableView.reloadData()
            }
                else
            {
                print(error!)
            }
        }
        
    
        
        
        self.myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
}
extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell: TableViewCell? = myTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        tableViewCell?.adviceLabel.text = tableViewModel.advice.slip.advice
       
        
        
        
        return tableViewCell ?? UITableViewCell()
    }
    
}
