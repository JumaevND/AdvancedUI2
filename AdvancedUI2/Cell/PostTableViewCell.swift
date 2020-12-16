//
//  PostTableViewCell.swift
//  AdvancedUI2
//
//  Created by Nuriddin Jumaev on 11/29/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    //ui obj
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    
    //first load func
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
}
