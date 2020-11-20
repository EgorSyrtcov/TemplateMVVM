//
//  MainCoordinator.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

final class MainCoordinator: NavigationCoordinator {
    
    private let navigationController: UINavigationController
    private let viewModel: MainViewModel
    
    let dependencies: Dependencies
    
    override init(nav: UINavigationController, dependencies: Dependencies) {
        viewModel = MainViewModel()
        self.navigationController = nav
        self.dependencies = dependencies
        super.init(nav: nav, dependencies: dependencies)
    }
    
    override func start() {
        let viewController = MainViewController()
        viewController.viewModel = viewModel
        navigationController.pushViewController(viewController, animated: false)
    }
    
    override func interactions() {
        
    }
}
