//
//  CadastroViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 11/11/20.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFiedConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
   
    @IBAction func buttonNextRegister(_ sender: Any) {
        if let nextRegister = UIStoryboard(name: "Cadastro2ViewController", bundle: nil).instantiateInitialViewController() as? Cadastro2ViewController {
            navigationController?.pushViewController(nextRegister, animated: true)
        }
    }
}
