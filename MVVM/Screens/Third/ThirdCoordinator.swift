//
//  ThirdCoordinator.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit

final class ThirdCoordinator: ModalCoordinator {
    

  override func createViewController() -> UIViewController {
    let viewController = ThirdViewController()
    viewController.viewModel = ThirdViewModel()
    return viewController
  }
    
    override func interactions() {
        
    }
}

