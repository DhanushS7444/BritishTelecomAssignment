//
//  UserNameTitleTableViewCell.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import UIKit

class UserNameTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
