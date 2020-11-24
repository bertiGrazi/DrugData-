//
//  Cadastro2ViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 23/11/20.
//

import UIKit

class Cadastro2ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonRegister(_ sender: Any) {
        if let nextRegister = UIStoryboard(name: "AvatarViewController", bundle: nil).instantiateInitialViewController() as? AvatarViewController {
            navigationController?.pushViewController(nextRegister, animated: true)
        }
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
