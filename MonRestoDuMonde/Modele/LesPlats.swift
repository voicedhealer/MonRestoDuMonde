//
//  LesPlats.swift
//  MonRestoDuMonde
//
//  Created by bernardot vivien on 14/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit

class LesPlats {
    
    static let obtenir = LesPlats()
    
    func lesMenus() -> [Menu] {
        var menus = [Menu]()
        let it = Menu(pays: ITALIE, image: #imageLiteral(resourceName: "paella"))
        let jap = Menu(pays: JAPON, image: #imageLiteral(resourceName: "sushis.jpg"))
        let chi = Menu(pays: CHINE, image:#imageLiteral(resourceName: "nem.jpg"))
        let usa = Menu(pays: USA, image: #imageLiteral(resourceName: "burger.jpeg"))
        let mex = Menu(pays: MEXIQUE, image: #imageLiteral(resourceName: "fajitas.jpg"))
        let esp = Menu(pays: ESPAGNE, image: #imageLiteral(resourceName: "paella.jpg"))
        let sui = Menu(pays: SUISSE, image: #imageLiteral(resourceName: "fondue.jpg"))
        menus.append(contentsOf: [it, jap, chi, usa, mex, esp, sui])
        return menus
    }
    
    
}
