//
//  OrganicoViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 22/11/20.
//

import UIKit

class OrganicoViewController: UIViewController {

    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var searchBarOrganic: UISearchBar!
    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var tableViewOrganic: UITableView!
    
    var array = [Cabecalho] ()
    var arrayMedice = [Remedios]()
    
    func setup(dados: Cabecalho) {
        labelName.text = dados.name
        labelLocation.text = dados.location
        imageViewAvatar.image = UIImage(named: "1.png")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOrganic.delegate = self
        tableViewOrganic.dataSource = self

        setup(dados: (Cabecalho(name: "Maria", location: "São Paulo", profileImage: "1.png")))
        
        arrayMedice.append(Remedios(name: "ACETATO DE DEXAMETASONA", nameLaboratory: "MULTILAB INDeSTRIA E COMeRCIO DE PRODUTOS FARMACeUTICOS LTDA", nameCategory: "CORTICOESTEReIDES TePICOS PUROS", productType: "Generico", preco: "R$ 5,98"))
        
        arrayMedice.append(Remedios(name: "AIRES", nameLaboratory: "MOMENTA FARMACeUTICA LTDA", nameCategory: "EXPECTORANTES", productType: "Generico", preco: "R$ 14,58"))
        
        arrayMedice.append(Remedios(name: "BAYCUTEN N", nameLaboratory: "BAYER S.A.", nameCategory: "CORTICOESTEReIDES ASSOCIADOS A ANTIMICOTICOS", productType: "Novo", preco: "R$ 19,74"))
                                    
        arrayMedice.append(Remedios(name: "ORENCIA", nameLaboratory: "BRISTOL-MYERS SQUIBB FARMACeUTICA LTDA", nameCategory: "AGENTES ANTI-REUMeTICOS ESPECeFICOS", productType: "Biologico", preco: "R$ 4914,04"))
                                    
        arrayMedice.append(Remedios(name: "VERZENIOS", nameLaboratory: "ELI LILLY DO BRASIL LTDA", nameCategory: "INIBIDORES DE PROTEINA QUINASE", productType: "Novo", preco: "R$ 2077,84"))
        
        arrayMedice.append(Remedios(name: "DISMUCAL", nameLaboratory: "MYLAN LABORATORIOS LTDA", nameCategory: "EXPECTORANTES", productType: "Generico", preco: "R$ 20,16"))
        
        arrayMedice.append(Remedios(name: "ACETATO DE ABIRATERONA", nameLaboratory: "DR. REDDYS FARMACeUTICA DO BRASIL LTDA", nameCategory: "ANTIANDROGeNICOS CITOSTeTICOS", productType: "Generico", preco: "R$ 1352,66"))
        
        arrayMedice.append(Remedios(name: "CALQUENCE", nameLaboratory: "ASTRAZENECA DO BRASIL LTDA", nameCategory: "INIBIDORES PREOTEeNA KINASE ANTINEOPLeSICOS", productType: "Novo", preco: "R$ 38240,57"))
        
        arrayMedice.append(Remedios(name: "GLUCOBAY", nameLaboratory: "BAYER S.A.", nameCategory: "ANTIDIABeTICOS INIBIDORES ALFA-GLUCOSIDASE", productType: "Biologicos", preco: "R$ 31,17"))
                                    
        arrayMedice.append(Remedios(name: "AGLUCOSE", nameLaboratory: "EMS SIGMA PHARMA LTDA", nameCategory: "ANTIDIABeTICOS INIBIDORES ALFA-GLUCOSIDASE", productType: "Similar", preco: "R$ 19,63"))
                                    
        arrayMedice.append(Remedios(name: "ACETATO DE CIPROTERONA", nameLaboratory: "LABORATeRIO QUeMICO FARMACeUTICO BERGAMO LTDA", nameCategory: "HORMeNIOS ANTIANDROGeNICOS CITOSTeTICOS", productType: "Generico", preco: "R$ 68,11"))
                                    
        arrayMedice.append(Remedios(name: "LIBERFEM", nameLaboratory: "ZODIAC PRODUTOS FARMACeUTICOS S/A", nameCategory: "HORMeNIOS CONTRACEPTIVOS MONOFeSICOS COM ESTROGeNIOS", productType: "Generico", preco: "R$ 79,98"))
        
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
extension OrganicoViewController: UITableViewDelegate{
    
}
extension OrganicoViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMedice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrganicoTableViewCell", for: indexPath) as! OrganicoTableViewCell
        cell.setup(name: arrayMedice[indexPath.row].name)
        return cell
    }
    
    
}
