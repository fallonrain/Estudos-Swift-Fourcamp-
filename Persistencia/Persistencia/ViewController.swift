//
//  ViewController.swift
//  Persistencia
//
//  Created by user218968 on 5/25/22.
//

import UIKit
import CoreData

class ViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    
//    var names: [String] = []
    var people: [NSManagedObject] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        title = "Lista de Nomes"
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate
        else
        {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Users")
        
        do
        {
            people = try managedContext.fetch(fetchRequest)
        }
        catch let error as NSError
        {
            print("Nao foi possivel retornar os registros. \(error)")
        }
    }

    @IBAction func addPerson(_ sender: UIBarButtonItem)
    {
        let alert = UIAlertController(title: "Nome", message: "Insira o novo nome", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Salvar", style: .default)
        {
            [unowned self] action in
            
            guard let textField = alert.textFields?.first,
                  let nameToSave = textField.text
            else
            {
                return
            }
//            self.names.append(nameToSave)
            save(nameToSave)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel)
        
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func excludePerson(_ sender: UIBarButtonItem)
    {
        let alert = UIAlertController(title: "Desfazer", message: "Deseja excluir todos os nomes na lista?", preferredStyle: .alert)
        let excludeAction = UIAlertAction(title: "Excluir", style: .default)
        {
            [unowned self] action in
            
            guard let textField = alert.textFields?.first,
                  let nameToExclude = textField.text
            else
            {
                return
            }
            
            exclude(nameToExclude)
            self.tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel)
        
        alert.addTextField()
        alert.addAction(excludeAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
    func save(_ name: String)
    {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate
        else
        {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: managedContext)!
        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        
        person.setValue(name, forKey: "name")
        
        do
        {
            try managedContext.save()
            people.append(person)
        }
        catch let error as Error
        {
            print("Error ao salvar novo nome \(error)")
        }
    }
    
    func exclude(_ name: String)
    {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate
        else
        {
            return
        }

        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: managedContext)!
        let person = NSManagedObject(entity: entity, insertInto: managedContext)

        person.setValue(nil, forKey: "name")

        do
        {
            try managedContext.save()
            people.append(person)

//            var strings = people as? [String]
//
//            strings = strings?.filter { $0 != name }
        }
        catch let error as Error
        {
            print("Error ao excluir nome \(error)")
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
//        return names.count
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = people[indexPath.row]
        
//        cell.textLabel?.text = names[indexPath.row]
        cell.textLabel?.text = person.value(forKey: "name") as? String
        return cell
    }
}
