//
//  ResultadoPesquisaViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 16/11/20.
//

import UIKit

class ResultadoPesquisaViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var tableViewResult: UITableView!
    
    var array = [Cabecalho] ()
    var arrayMedice = [Remedios] ()
    
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
        
        arrayMedice.append(Remedios(name: "Coristina D", nameLaboratory: "COSMED INDUSTRIA DE COMESTICOS E MEDICAMENTOS S.A", nameCategory: "ANTIGRIPAIS", preco: "R$ 17.24"))
        arrayMedice.append(Remedios(name: "Coristina D", nameLaboratory: "COSMED INDUSTRIA DE COMESTICOS E MEDICAMENTOS S.A", nameCategory: "ANTIGRIPAIS", preco: "R$ 17.24"))
        arrayMedice.append(Remedios(name: "Coristina D", nameLaboratory: "COSMED INDUSTRIA DE COMESTICOS E MEDICAMENTOS S.A", nameCategory: "ANTIGRIPAIS", preco: "R$ 17.24"))
        arrayMedice.append(Remedios(name: "Coristina D", nameLaboratory: "COSMED INDUSTRIA DE COMESTICOS E MEDICAMENTOS S.A", nameCategory: "ANTIGRIPAIS", preco: "R$ 17.24"))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewResult.delegate = self
        tableViewResult.dataSource = self
        
        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")) )
    }
    

}
extension ResultadoPesquisaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let medicineDetails = UIStoryboard(name: "DetalhesMedicamentoViewController", bundle: nil).instantiateInitialViewController() as? DetalhesMedicamentoViewController {
                    navigationController?.pushViewController(medicineDetails, animated: true)
                }
    }
}
extension ResultadoPesquisaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMedice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NomeRemediosTableViewCell", for: indexPath) as! NomeRemediosTableViewCell
        cell.setup(nameMedice: arrayMedice[indexPath.row])
        return cell
        }
    
}

