//
//  MonNav.swift
//  MonRestoDuMonde
//
//  Created by bernardot vivien on 14/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit

class MonNav: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = NOIR
        navigationBar.tintColor = GRIS_TRES_CLAIR
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE as Any, .foregroundColor: GRIS_TRES_CLAIR]
        
    }

}
