//
//  SecondCoordinator.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit

final class SecondCoordinator: NavigationCoordinator {
    
    private let navigationController: UINavigationController
    private let viewModel: SecondViewModel
    private var viewController = SecondViewController()
    
    let dependencies: Dependencies
    
    override init(nav: UINavigationController, dependencies: Dependencies) {
        viewModel = SecondViewModel()
        self.navigationController = nav
        self.dependencies = dependencies
        super.init(nav: nav, dependencies: dependencies)
    }
    
    override func start() {
        viewController.viewModel = viewModel
        navigationController.pushViewController(viewController, animated: false)
    }
    
    override func interactions() {
        viewModel.delegate = self
    }
}

extension SecondCoordinator: SecondViewModelDelegate {
    func next() {
        dependencies.router.showThirdScreen(from: viewController)
    }
}
