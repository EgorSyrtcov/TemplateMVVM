//
//  MainCoordinator.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

final class MainCoordinator: NavigationCoordinator {
    
    private let viewModel: MainViewModel
    
  override init(parent: Coordinator? = nil, dependencies: Dependencies, transition: Transition) {
    viewModel = MainViewModel()
    super.init(parent: parent, dependencies: dependencies, transition: transition)
  }
    
  override func createViewController() -> UIViewController {
    let viewController = MainViewController()
    viewController.viewModel = viewModel
    return viewController
  }
    
    override func interactions() {
        viewModel.delegate = self
    }
}

extension MainCoordinator: MainViewModelDelegate {
    func dismiss() {
        self.dependencies.router.showSecondScreen(from: self)
    }
}
