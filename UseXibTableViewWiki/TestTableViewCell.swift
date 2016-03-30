//
//  TestTableViewCell.swift
//  UseXibTableViewWiki
//
//  Created by 矢野史洋 on 2016/03/30.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
