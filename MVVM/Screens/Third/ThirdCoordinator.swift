//
//  ThirdCoordinator.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit

final class ThirdCoordinator: ModalCoordinator {
    
    private weak var parentVC: UIViewController?
    private let viewModel = ThirdViewModel()
    private let viewController = ThirdViewController()
    
    private let dependencies: Dependencies
    
    override init(vc: UIViewController?, dependencies: Dependencies) {
        parentVC = vc
        self.dependencies = dependencies
        super.init(vc: vc!, dependencies: dependencies)
    }
    
    override func start() {
        viewController.modalPresentationStyle = .overFullScreen
        viewController.viewModel = viewModel
        parentVC?.present(viewController, animated: false, completion: nil)
    }
    
    override func interactions() {
        
    }
}

