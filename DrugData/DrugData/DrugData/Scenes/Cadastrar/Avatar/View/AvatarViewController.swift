//
//  AvatarViewController.swift
//  DrugData
//
//  Created by Grazi Berti on 24/11/20.
//

import UIKit

enum TypeSegment {
    static let woman = 0
    static let man = 1
    static let undefined = 2
}

class AvatarViewController: UIViewController {

    @IBOutlet weak var segmentedControlOptions: UISegmentedControl!
    @IBOutlet weak var collectionViewAvatar: UICollectionView!
    
    @IBAction func segmentedControlOptions(_ sender: Any) {
        collectionViewAvatar.reloadData()
    }
    
    var avatarWoman = [ProfileImage] ()
    var avatarMan = [ProfileImage] ()
    var avatar = [ProfileImage] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewAvatar.delegate = self
        collectionViewAvatar.dataSource = self
        
        avatarWoman.append(ProfileImage(profileImage: "011-woman.png"))
        avatarWoman.append(ProfileImage(profileImage: "012-woman.png"))
        avatarWoman.append(ProfileImage(profileImage: "017-woman.png"))
        avatarWoman.append(ProfileImage(profileImage: "027-woman.png"))
        avatarWoman.append(ProfileImage(profileImage: "029-woman.png"))
        avatarWoman.append(ProfileImage(profileImage: "032-woman.png"))
        
        avatarMan.append(ProfileImage(profileImage: "009-man.png"))
        avatarMan.append(ProfileImage(profileImage: "021-man.png"))
        avatarMan.append(ProfileImage(profileImage: "025-man.png"))
        avatarMan.append(ProfileImage(profileImage: "035-man.png"))
        avatarMan.append(ProfileImage(profileImage: "036-man.png"))
        avatarMan.append(ProfileImage(profileImage: "037-man.png"))
        
        avatar.append(ProfileImage(profileImage: "avatar.png"))
    }
}

extension AvatarViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if segmentedControlOptions.selectedSegmentIndex == TypeSegment.woman {
            if let tabBarController = UIStoryboard(name: "PesquisarViewController", bundle: nil).instantiateViewController(withIdentifier: "tabBarController") as? UITabBarController{
                UIViewController.replaceRootViewController(viewController: tabBarController)
            }
        }
        if segmentedControlOptions.selectedSegmentIndex == TypeSegment.man {
            if let tabBarController = UIStoryboard(name: "PesquisarViewController", bundle: nil).instantiateViewController(withIdentifier: "tabBarController") as? UITabBarController{
                UIViewController.replaceRootViewController(viewController: tabBarController)
            }
        }
        
       
    }
}

extension AvatarViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if segmentedControlOptions.selectedSegmentIndex == TypeSegment.woman {
            return avatarWoman.count
        }
        if segmentedControlOptions.selectedSegmentIndex == TypeSegment.man {
            return avatarMan.count
        }
        
        return avatar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AvatarCollectionViewCell", for: indexPath) as? AvatarCollectionViewCell {
            if segmentedControlOptions.selectedSegmentIndex == TypeSegment.woman {
                cell.setup(avatar: avatarWoman[indexPath.row])
                return cell
            }
            if segmentedControlOptions.selectedSegmentIndex == TypeSegment.man {
                cell.setup(avatar: avatarMan[indexPath.row])
                return cell
            }
            
            cell.setup(avatar: avatar[indexPath.row])
            return cell
        
    }
        return UICollectionViewCell()
    }
}
