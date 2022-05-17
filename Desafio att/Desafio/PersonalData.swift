//
//  PersonalData.swift
//  Desafio
//
//  Created by Josicleison Elves on 4/28/22.
//

import UIKit

class PersonalData: UIViewController
{
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    @IBAction func returnButton(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "Retorno", sender: nil)
    }
}

extension PersonalData: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cardCell: TableViewCell? = myTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        return cardCell ?? UITableViewCell()
    }
}
