//
//  DetalhesMedicamentoViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 23/11/20.
//

import UIKit

class DetalhesMedicamentoViewController: UIViewController {

    @IBOutlet weak var tableViewDetails: UITableView!
   
    var arrayMed = [Remedios] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDetails.delegate = self
        tableViewDetails.dataSource = self
        
    }
    
}
extension DetalhesMedicamentoViewController: UITableViewDelegate {
    
}
extension DetalhesMedicamentoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetalheMedicamentoTableViewCell", for: indexPath) as! DetalheMedicamentoTableViewCell
        
        return cell
    }
    
    
}
