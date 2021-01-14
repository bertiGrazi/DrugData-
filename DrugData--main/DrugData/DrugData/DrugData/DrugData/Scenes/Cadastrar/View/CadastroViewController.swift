//
//  CadastroViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 11/11/20.
//

import UIKit

class CadastroViewController: UIViewController, ImagePickerFotoSelecionada {

    // MARK: IBOutlet 
    @IBOutlet weak var imageViewUser: UIImageView!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFiedConfirmPassword: UITextField!
    
    // MARK: Atributos
    let imagePicker = ImagePicker()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadiuView()
        self.setup()
        
    }
   // MARK: IBAction
    @IBAction func buttonNextRegister(_ sender: Any) {
        if let tabBarController = UIStoryboard(name: "PesquisarViewController", bundle: nil).instantiateViewController(withIdentifier: "tabBarController") as? UITabBarController{
            UIViewController.replaceRootViewController(viewController: tabBarController)
        }
    }
    
    @IBAction func buttonPicture(_ sender: Any) {
        
        let menu = ImagePicker().menuDeOpcoes(completion: {
            (opcao) in self.mostraMultimidia(opcao: opcao)
        })
        present(menu, animated: true, completion: nil)
    }
    
    // MARK: Métodos
    func mostraMultimidia(opcao: MenuDeOpcoes) {
        let multimidia = UIImagePickerController()
        multimidia.delegate = imagePicker as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        if opcao == .camera && UIImagePickerController.isSourceTypeAvailable(.camera) {
            multimidia.sourceType = .camera
        }
        
        else {
            multimidia.sourceType = .photoLibrary
        }
        self.present(multimidia, animated: true, completion: nil)
    }
    
    // MARK: Delegate
    func imagePickerFotoSelecionada(_ foto: UIImage) {
        imageViewUser.image = foto
    }
    
    func setup() {
        imagePicker.delegate = self
    }
    func cornerRadiuView() {
        imageViewUser.layer.cornerRadius = imageViewUser.frame.width / 2
        imageViewUser.layer.borderWidth = 0.5
       // imageViewUser . layer.borderWidth = UIColor.lightGray.cgColor
    }
    
    
}
