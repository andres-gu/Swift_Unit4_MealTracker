//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Andres Gutierrez on 1/8/18.
//  Copyright © 2018 Andres Gutierrez. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet weak var cellIconLabel: UILabel!
    @IBOutlet weak var cellNameLabel: UILabel!
    @IBOutlet weak var cellDescriptionLabel: UILabel!
}

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
        Meal(name: "Breakfast", food: [
            Food(icon: "🍎", name:"Apple", description:"one red apple"),
            Food(icon: "🍳", name: "Eggs", description: "two poached eggs"),
            Food(icon: "🥞", name: "Pancakes", description: "three pancakes")
            ]),
        Meal(name: "Lunch", food: [
            Food(icon: "🍔", name: "Hamburger Buns", description: "2 Whole-wheat hamburger buns."),
            Food(icon: "🍔", name: "Meat Patty", description: "1/2 lb. meat patty."),
            Food(icon: "🍟", name: "Potatoes", description: "French Fries"),
            Food(icon: "🥒", name: "Dills", description: "Kosher Dills")
            ]),
        Meal(name: "Dinner", food: [
            Food(icon: "🍗", name: "Chicken Breast", description: "Chicke breast in strips."),
            Food(icon: "🥗", name: "Salad", description: "Various vegetables."),
            Food(icon: "🥑", name: "Avocado", description: "Avocado paste?")
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        let meal = meals[indexPath.section].food[indexPath.row]
        
        cell.cellIconLabel?.text = meal.icon
        cell.cellNameLabel?.text = meal.name
        cell.cellDescriptionLabel?.text = meal.description
        
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
