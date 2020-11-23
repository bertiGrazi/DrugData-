//
//  LoginViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 11/11/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func buttonForgotPassword(_ sender: Any) {
        if let forgotPassword = UIStoryboard(name: "EsqueceuASenhaViewController", bundle: nil).instantiateInitialViewController() as? EsqueceuASenhaViewController {
            navigationController?.pushViewController(forgotPassword, animated: true)
        }
    }
    @IBAction func buttonLoggin(_ sender: Any) {
        if let search = UIStoryboard(name: "PesquisarViewController", bundle: nil).instantiateInitialViewController() {
            navigationController?.pushViewController(search, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
