//
//  GroceriesViewController.swift
//  shoppingList
//
//  Created by Nico on 25/11/2020.
//

import UIKit
import CoreData

class GroceriesViewController: UITableViewController {

    var groceries = [Groceries]()
    var selectedCategory: Category? {
        didSet {
            loadGroceries()
        }
    }
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadGroceries()
    }

    // MARK: - Tableview Datasource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groceries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)
        
        cell.textLabel?.text = groceries[indexPath.row].name
        
        return cell
    }
    
    // MARK: - Data Manipulation
    
    func saveGroceries() {
        
    }
    
    func loadGroceries() {
        
    }
    
    // MARK: - Add New Groceries
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add groceries to buy", message: "", preferredStyle: .alert)
    
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            
            //what will happen once the user clicks the Add Category button in our UIAlert
            
            let newGroceries = Groceries(context: self.context)
            newGroceries.name = textField.text
            
            self.groceries.append(newGroceries)
            
            self.saveGroceries()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Add groceries"
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Tableview Delegate Methods
}
