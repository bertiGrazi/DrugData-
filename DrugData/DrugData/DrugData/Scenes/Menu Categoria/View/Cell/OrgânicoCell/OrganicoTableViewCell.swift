//
//  OrganicoTableViewCell.swift
//  DrugData
//
//  Created by Igor Gavilon on 25/11/20.
//

import UIKit

class OrganicoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOrganicName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setup(name: String){
        self.labelOrganicName.text = name
    }

}
