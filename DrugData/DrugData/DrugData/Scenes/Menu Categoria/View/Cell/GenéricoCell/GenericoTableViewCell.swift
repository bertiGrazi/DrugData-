//
//  GenericoTableViewCell.swift
//  DrugData
//
//  Created by Igor Gavilon on 24/11/20.
//

import UIKit

class GenericoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelGenericName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(name: String){
        self.labelGenericName.text = name
    }

}
