//
//  DetalhesMedicamentoViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 22/11/20.
//

import UIKit

class DetalhesMedicamentoViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var tableViewDetails: UITableView!

    var array = [Cabecalho] ()
    var arrayMedice = [Remedios] ()
  
    
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDetails.delegate = self
        tableViewDetails.dataSource = self
        
        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")) )
        
    }
}
extension DetalhesMedicamentoViewController: UITableViewDelegate {
    
}
extension DetalhesMedicamentoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMedice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetalheMedicamentoTableViewCell", for: indexPath) as! DetalheMedicamentoTableViewCell
        cell.setup(details: arrayMedice[indexPath.row])
        return cell
    }
}
