//
//  filacustomizadaTableViewCell.swift
//  tableView
//
//  Created by Alfonso Hernandez on 17/1/18.
//  Copyright © 2018 Alfonso Hernandez. All rights reserved.
//

import UIKit

class filacustomizadaTableViewCell: UITableViewCell {

    @IBOutlet weak var `switch`: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
