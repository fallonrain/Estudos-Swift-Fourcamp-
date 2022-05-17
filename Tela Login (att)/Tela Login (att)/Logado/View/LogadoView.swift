//
//  LogadoView.swift
//  Tela Login (att)
//
//  Created by user218968 on 5/5/22.
//

import UIKit

class LogadoView: UIViewController {
    
    @IBOutlet weak var tableViewLogado: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewLogado.delegate = self
        self.tableViewLogado.dataSource = self
        
    }
    
    
}
extension LogadoView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    

}
