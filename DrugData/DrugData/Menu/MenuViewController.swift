//
//  MenuViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 11/11/20.
//

import UIKit

class MenuViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func buttonSearch(_ sender: Any) {
        if let search = UIStoryboard(name: "PesquisarViewController", bundle: nil).instantiateInitialViewController() as? PesquisarViewController {
            navigationController?.pushViewController(search, animated: true)
        }
    }
    
    @IBAction func buttonCategory(_ sender: Any) {
        if let category = UIStoryboard(name: "CategoriaViewController", bundle: nil).instantiateInitialViewController() as? CategoriaViewController {
            navigationController?.pushViewController(category, animated: true)
        }
    }
    
    @IBAction func buttonFavorites(_ sender: Any) {
        if let favorites = UIStoryboard(name: "FavoritosViewController", bundle: nil).instantiateInitialViewController() as? FavoritosViewController {
            navigationController?.pushViewController(favorites, animated: true)
        }
    }
    
    @IBAction func buttonSettings(_ sender: Any) {
        if let settings = UIStoryboard(name: "ConfiguracaoViewController", bundle: nil).instantiateInitialViewController()   {
            navigationController?.pushViewController(settings, animated: true)
        }
    }
}
