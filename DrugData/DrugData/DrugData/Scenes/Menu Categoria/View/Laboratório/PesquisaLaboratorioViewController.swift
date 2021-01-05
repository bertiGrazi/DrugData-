//
//  PesquisaLaboratorioViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 16/11/20.
//

import UIKit

class PesquisaLaboratorioViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var searchBarLaboratory: UISearchBar!
    @IBOutlet weak var tableViewLaboratory: UITableView!
    
    var array = [Cabecalho] ()
    var arrayLaboratories = [String]()
    var arrayMedice = [Remedios]()
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewLaboratory.delegate = self
        tableViewLaboratory.dataSource = self
        
        arrayMedice.append(Remedios(name: "CORISTINA D", nameLaboratory: "COSMED INDUSTRIA DE COMESTICOS E MEDICAMENTOS S.A", nameCategory: "ANTIGRIPAIS", productType: "Novo", preco: "R$ 17.24"))
        
        arrayMedice.append(Remedios(name: "BAYCUTEN N", nameLaboratory: "BAYER S.A.", nameCategory: "CORTICOESTEReIDES ASSOCIADOS A ANTIMICOTICOS", productType: "Novo", preco: "R$ 19,74"))
                                    
        arrayMedice.append(Remedios(name: "ORENCIA", nameLaboratory: "BRISTOL-MYERS SQUIBB FARMACeUTICA LTDA", nameCategory: "AGENTES ANTI-REUMeTICOS ESPECeFICOS", productType: "Biologico", preco: "R$ 4914,04"))
                                    
        arrayMedice.append(Remedios(name: "VERZENIOS", nameLaboratory: "ELI LILLY DO BRASIL LTDA", nameCategory: "INIBIDORES DE PROTEINA QUINASE", productType: "Novo", preco: "R$ 2077,84"))
        
        arrayMedice.append(Remedios(name: "CALQUENCE", nameLaboratory: "ASTRAZENECA DO BRASIL LTDA", nameCategory: "INIBIDORES PREOTEeNA KINASE ANTINEOPLeSICOS", productType: "Novo", preco: "R$ 38240,57"))
        
        arrayMedice.append(Remedios(name: "GLUCOBAY", nameLaboratory: "BAYER S.A.", nameCategory: "ANTIDIABeTICOS INIBIDORES ALFA-GLUCOSIDASE", productType: "Biologicos", preco: "R$ 31,17"))
                                    
        arrayMedice.append(Remedios(name: "AGLUCOSE", nameLaboratory: "EMS SIGMA PHARMA LTDA", nameCategory: "ANTIDIABeTICOS INIBIDORES ALFA-GLUCOSIDASE", productType: "Similar", preco: "R$ 19,63"))
                                    
        arrayMedice.append(Remedios(name: "ACEBROFILINA", nameLaboratory: "EMS S/A", nameCategory: "EXPECTORANTES", productType: "Generico", preco: "R$ 18,69"))
        
        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")) )
        
        loadFilters()
    }
    private func loadFilters() {
        let laboratories = arrayMedice.map { (remedio) -> String in
            remedio.nameLaboratory
        }
        self.arrayLaboratories.append(contentsOf: Array(Set(laboratories)))
    }

}
extension PesquisaLaboratorioViewController: UITableViewDelegate{
    
}
extension PesquisaLaboratorioViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayLaboratories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LaboratorioTableViewCell", for: indexPath) as! LaboratorioTableViewCell
        cell.setup(name: arrayLaboratories[indexPath.row])
        return cell
    }
    
    
}
