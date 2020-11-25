//
//  ListViewController.swift
//  shoppingList
//
//  Created by Nico on 25/11/2020.
//

import UIKit

class ListViewController: UITableViewController {

    var  categories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Tableview Datasoruce Methods


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        let category = categories[indexPath.row]
        
        cell.textLabel?.text = category.name
        
        return cell
    }
    
    
    //MARK: - Data Manipulation
    
    //MARK: - Add New Categories
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    //MARK: - Tableview Delegate Methods
}
