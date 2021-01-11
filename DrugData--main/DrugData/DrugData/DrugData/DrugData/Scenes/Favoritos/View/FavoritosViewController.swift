//
//  FavoritosViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 12/11/20.
//

import UIKit

class FavoritosViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var tableViewFavoritos: UITableView!
    
    var array = [Cabecalho] ()
    var arrayMed = [Remedios] ()
    
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")) )
        
        tableViewFavoritos.delegate = self
        tableViewFavoritos.dataSource = self
        
        arrayMed.append(Remedios(name: "Coristina D", nameLaboratory: "Laboratório: COSMED S.A", nameCategory: "Categoria: ANTIGRIPAL ", productType: "Novo", preco: "Preço: R$ 17, 24"))
    }
}
extension FavoritosViewController: UITableViewDelegate {
    
}
extension FavoritosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetalheMedicamentoTableViewCell", for: indexPath) as! DetalheMedicamentoTableViewCell
        cell.setup(details: arrayMed[indexPath.row])
        return cell
    }
    
    
}
