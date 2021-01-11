//
//  NomeRemediosTableViewCell.swift
//  DrugData
//
//  Created by Grazi Berti on 22/11/20.
//

import UIKit

class NomeRemediosTableViewCell: UITableViewCell {

    @IBOutlet weak var labelNameMedice: UILabel!
    
    func setup(nameMedice: String) {
        labelNameMedice.text = nameMedice
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
