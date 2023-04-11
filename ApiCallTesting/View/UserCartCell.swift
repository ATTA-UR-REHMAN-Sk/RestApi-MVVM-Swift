//
//  UserCartCell.swift
//  ApiCallTesting
//
//  Created by apple on 02/01/2023.
//

import UIKit

class UserCartCell: UITableViewCell {

    @IBOutlet weak var cartID: UILabel!
    
    @IBOutlet weak var cartName: UILabel!
    
    @IBOutlet weak var cartStatus: UILabel!
    
    @IBOutlet weak var CellImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
