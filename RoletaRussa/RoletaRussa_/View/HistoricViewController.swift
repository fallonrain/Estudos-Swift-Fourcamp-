//
//  HistoricoViewController.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import UIKit

class HistoricViewController: UIViewController {
    
    @IBOutlet weak var historicTableView: UITableView!
    @IBOutlet weak var lbValue: UILabel!
    
    let historicController: HistoricController = HistoricController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historicController.importData()
        
        self.historicTableView.delegate = self
        self.historicTableView.dataSource = self
        
        self.historicTableView.register(UINib(nibName: "HistoricTableViewCell", bundle: nil), forCellReuseIdentifier: "HistoricTableViewCell")
        
        self.lbValue.text = String(format: "%.2f", historicController.value)

    }
    
    
}

extension HistoricViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historicController.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellHistoric: HistoricTableViewCell? = historicTableView.dequeueReusableCell(withIdentifier: "HistoricTableViewCell", for: indexPath) as? HistoricTableViewCell
        
        cellHistoric?.setup(value: historicController.loadCurrentProduct(indexPath: indexPath), typeImage: historicController.getType(indexPath: indexPath))
        
        return cellHistoric ?? UITableViewCell()
    }
    
    
}
