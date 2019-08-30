//
//  TableViewController.swift
//  tabelviewController
//
//  Created by Anil on 7/19/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit


/*delete viewController and create tableViewController file
 * also delete viewController from storybord and create tableViewController and initize it. 
 */

enum Day {
    case Sunday
    case Monday
    case Tuesday
    case Wednessday
    case Thursday
    case Friday
    case Saturday
}
class TableViewController: UITableViewController {
    
    
    
    
    var days = ["Sunday", "Monday", "Tuesday", "Wensday", "Thursday", "Friday", "Saturday"]

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return days.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = "  \(days[indexPath.row])"
        return cell
    }

   
}
