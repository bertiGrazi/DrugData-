//
//  CategoriaViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 18/11/20.
//

import UIKit

class CategoriaViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    
    var array = [Cabecalho] ()
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")) )
    }

    @IBAction func buttonLaboratory(_ sender: Any) {
        if let filterLaboratory = UIStoryboard(name: "PesquisaLaboratorioViewController", bundle: nil).instantiateInitialViewController() as? PesquisaLaboratorioViewController {
            navigationController?.pushViewController(filterLaboratory, animated: true)
        }
    }
    
    @IBAction func buttonGeneric(_ sender: Any) {
    }
    
    @IBAction func buttonControlMedice(_ sender: Any) {
    }
    
    @IBAction func buttonOrganic(_ sender: Any) {
    }
}
