//
//  ModalCoordinator.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/19/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class ModalCoordinator: Coordinator {
    
    init(vc: UIViewController, dependencies: Dependencies) {
        super.init()
        interactions()
    }
    
    override func start() { }
    
    func finished() { }
    
    override func interactions() { }
}
