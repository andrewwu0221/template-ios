//
//  RestaurantTableViewCell.swift
//  template-ios
//
//  Created by Andrew Wu on 2018/8/25.
//  Copyright © 2018年 Andrew Wu. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel : UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
           thumbnailImageView.layer.cornerRadius = thumbnailImageView.bounds.width / 2
           thumbnailImageView.clipsToBounds = true
        }
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
