//
//  NavigationCoordinator.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/19/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class NavigationCoordinator: Coordinator {
    
    init(nav: UINavigationController, dependencies: Dependencies) {
        super.init()
        interactions()
    }
    
    override func start() { }
    
    override func interactions() { }
}
