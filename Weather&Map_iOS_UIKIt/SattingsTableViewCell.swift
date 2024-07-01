//
//  SattingsTableViewCell.swift
//  Weather&Map_iOS_UIKIt
//
//  Created by Jogender Singh on 30/04/24.
//

import UIKit

class SattingsTableViewCell: UITableViewCell {
    @IBOutlet weak var iconimg: UIImageView!
    @IBOutlet weak var lblFirst: UILabel!
    @IBOutlet weak var lblSecond: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
