//
//  MENU.swift
//  MonRestoDuMonde
//
//  Created by bernardot vivien on 14/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit


class Menu {
    private var _pays: String
    private var _image: UIImage
    private var _plats: [Plat]
    
    var pays: String {
        return _pays
    }
    
    var image: UIImage {
        return _image
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(pays: String, image: UIImage) {
        self._pays = pays
        self._image = image
        self._plats = [Plat]()
    }
    
}
