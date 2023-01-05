//
//  ViewController.swift
//  Fourbank
//
//  Created by Josicleison Elves on 01/06/22.
//

import UIKit

class NewsView: UIViewController
{
    @IBOutlet weak var newsView: UITableView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        newsView.delegate = self
        newsView.dataSource = self
        
        newsView.register(UINib(nibName: "NewsViewCell", bundle: nil), forCellReuseIdentifier: "NewsViewCell")
    }
}

extension NewsView: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: NewsViewCell? = newsView.dequeueReusableCell(withIdentifier: "NewsViewCell", for: indexPath) as? NewsViewCell

        return cell ?? UITableViewCell()
    }
}
