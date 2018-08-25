//
//  FoodPinViewController.swift
//  template-ios
//
//  Created by Andrew Wu on 2018/8/25.
//  Copyright © 2018年 Andrew Wu. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UIViewController {
    
    var restaurantNames = ["cafe Deadend","Homei","Teakha","Cafe Loisl", "Petite Oyster", "For Kee Restaurant","Po's Atelier", "Bourke street Bakery", "Haigh's Chocolate","Palomino Espresso","Upstate","Traif","Graham Avenue Meats and Deli","Waffle & Wolf", "Five Leaves", "Cafe Lore","Confessional","Barrafina", "Donostia","Royal Oak","CASK Pub and Kitchen"]
    var restaurantImages = ["cafe Deadend","Homei","Teakha","Cafe Loisl", "Petite Oyster", "For Kee Restaurant","Po's Atelier", "Bourke street Bakery", "Haigh's Chocolate","Palomino Espresso","Upstate","Traif","Graham Avenue Meats and Deli","Waffle & Wolf", "Five Leaves", "Cafe Lore","Confessional","Barrafina", "Donostia","Royal Oak","CASK Pub and Kitchen"]
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

extension RestaurantTableViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)as!
            RestaurantTableViewCell
        
        cell.nameLabel?.text = restaurantNames[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named:restaurantNames[indexPath.row])
        cell.typeLabel.text = restaurantTypes[indexPath.row]
        cell.locationLabel.text = restaurantLocations[indexPath.row]
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}



