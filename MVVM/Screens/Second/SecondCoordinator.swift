//
//  SecondCoordinator.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit

final class SecondCoordinator: NavigationCoordinator {
    
    private let viewModel: SecondViewModel
    
  override init(parent: Coordinator? = nil, dependencies: Dependencies, transition: Transition) {
    viewModel = SecondViewModel()
    super.init(parent: parent, dependencies: dependencies, transition: transition)
  }
    
  override func createViewController() -> UIViewController {
    let viewController = SecondViewController()
    viewController.viewModel = viewModel
    return viewController
  }
    
    override func interactions() {
        viewModel.delegate = self
    }
}

extension SecondCoordinator: SecondViewModelDelegate {
    func next() {
        dependencies.router.showThirdScreen(from: self)
    }
  
  func close() {
    dependencies.router.uncoordinate(from: self)
  }
}
