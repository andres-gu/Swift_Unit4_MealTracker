//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Andres Gutierrez on 1/8/18.
//  Copyright © 2018 Andres Gutierrez. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    var meals: [Meal] = [
        Meal(name: "breakfast", food: [
            Food(name:"eggs", description:"range-free eggs"),
            Food(name: "turkey bacon", description: "low-sodium bacon"),
            Food(name: "bread", description: "one slice of whole-wheat bread")
            ]),
        Meal(name: "lunch", food: [
            Food(name: "Hamburger Buns", description: "2 Whole-wheat hamburger buns."),
            Food(name: "Meat Patty", description: "1/2 lb. meat patty."),
            Food(name: "Mayo", description: "1 tbspn of Mayonnaise."),
            Food(name: "Dills", description: "Kosher Dills")
            ]),
        Meal(name: "dinner", food: [
            Food(name: "Chicken Breast", description: "Chicke breast in strips."),
            Food(name: "Salad", description: "Various vegetables."),
            Food(name: "Avocado", description: "Avocado paste?")
            ]),
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return meals[0].food.count
        case 1:
            return meals[1].food.count
        case 2:
            return meals[2].food.count
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section].food[indexPath.row]
        
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return meals[0].name
        case 1:
            return meals[1].name
        case 2:
            return meals[2].name
        default:
            return "meal name not found"
        }
    }

}
