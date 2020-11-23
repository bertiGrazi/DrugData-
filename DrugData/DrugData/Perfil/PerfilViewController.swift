//
//  PerfilViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 22/11/20.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBOutlet weak var viewBlue: UIView!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    
    @IBOutlet weak var imageViewData: UIImageView!
    
    var array = [Cabecalho] ()
    
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
        imageViewData.image = UIImage(named: "data.png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo - SP", profileImage: "1.png")))
    }
    
    @IBAction func buttonEdit(_ sender: Any) {
        if let edit = UIStoryboard(name: "EditarPerfilViewController", bundle: nil).instantiateInitialViewController() as? EditarPerfilViewController {
           present(edit, animated: true, completion: nil)
        }
    }
    

   
}
