//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by bernardot vivien on 14/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let CellId = "MenuCell"
    
    var menus = [Menu]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Les menus du monde"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let vue = UIView(frame: collectionView.bounds)
        vue.layer.addSublayer(Degrade())
        collectionView.backgroundView = vue
        
       menus = LesPlats.obtenir.lesMenus()
        collectionView.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let menu = menus[indexPath.item]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellId, for: indexPath) as? MenuCell {
            cell.miseEnPlace(menu: menu)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = collectionView.frame.width / 2 - 10
        return CGSize(width: largeur, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 35
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
