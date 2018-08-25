//
//  ThirdViewController.swift
//  template-ios
//
//  Created by Andrew Wu on 2018/8/25.
//  Copyright © 2018年 Andrew Wu. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var restaurantNames = ["cafe Deadend","Homei","Teakha","Cafe Loisl", "Petite Oyster", "For Kee Restaurant","Po's Atelier", "Bourke street Bakery", "Haigh's Chocolate","Palomino Espresso","Upstate","Traif","Graham Avenue Meats and Deli","Waffle & Wolf", "Five Leaves", "Cafe Lore","Confessional","Barrafina", "Donostia","Royal Oak","CASK Pub and Kitchen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named:restaurantNames[indexPath.row])
        
        return cell
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
