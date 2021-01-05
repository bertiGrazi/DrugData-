//
//  ControladosViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 22/11/20.
//

import UIKit

class ControladosViewController: UIViewController {
    
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var searchBarControll: UISearchBar!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var tableViewControll: UITableView!
    
    var array = [Cabecalho] ()
    var arrayMedice = [Remedios]()
    
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewControll.delegate = self
        tableViewControll.dataSource = self

        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")))
        
        arrayMedice.append(Remedios(name: "BAYCUTEN N", nameLaboratory: "BAYER S.A.", nameCategory: "CORTICOESTEReIDES ASSOCIADOS A ANTIMICOTICOS", productType: "Novo", preco: "R$ 19,74"))
                                    
        arrayMedice.append(Remedios(name: "ORENCIA", nameLaboratory: "BRISTOL-MYERS SQUIBB FARMACeUTICA LTDA", nameCategory: "AGENTES ANTI-REUMeTICOS ESPECeFICOS", productType: "Biologico", preco: "R$ 4914,04"))
                                    
        arrayMedice.append(Remedios(name: "VERZENIOS", nameLaboratory: "ELI LILLY DO BRASIL LTDA", nameCategory: "INIBIDORES DE PROTEINA QUINASE", productType: "Novo", preco: "R$ 2077,84"))
        
        arrayMedice.append(Remedios(name: "CALQUENCE", nameLaboratory: "ASTRAZENECA DO BRASIL LTDA", nameCategory: "INIBIDORES PREOTEeNA KINASE ANTINEOPLeSICOS", productType: "Novo", preco: "R$ 38240,57"))
        
        arrayMedice.append(Remedios(name: "GLUCOBAY", nameLaboratory: "BAYER S.A.", nameCategory: "ANTIDIABeTICOS INIBIDORES ALFA-GLUCOSIDASE", productType: "Biologicos", preco: "R$ 31,17"))
                                    
        arrayMedice.append(Remedios(name: "AGLUCOSE", nameLaboratory: "EMS SIGMA PHARMA LTDA", nameCategory: "ANTIDIABeTICOS INIBIDORES ALFA-GLUCOSIDASE", productType: "Similar", preco: "R$ 19,63"))
                                    
        arrayMedice.append(Remedios(name: "ACEBROFILINA", nameLaboratory: "EMS S/A", nameCategory: "EXPECTORANTES", productType: "Generico", preco: "R$ 18,69"))
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ControladosViewController: UITableViewDelegate{
    
}
extension ControladosViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMedice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ControladosTableViewCell", for: indexPath) as! ControladosTableViewCell
        cell.setup(name: arrayMedice[indexPath.row].name)
        return cell
    }
    
    
}
