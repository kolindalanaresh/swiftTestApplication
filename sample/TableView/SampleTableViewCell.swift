//
//  SampleTableViewCell.swift
//  sample
//
//  Created by admin on 26/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
