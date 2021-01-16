//
//  Router.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/20/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

final class Router {
    
    private var coordinators = [Coordinator?]()
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}

extension Router {
    func showMainScreen(from navigationController: UINavigationController) {
        let mainCoordinator = MainCoordinator(nav: navigationController, dependencies: dependencies)
        coordinators.append(mainCoordinator)
        mainCoordinator.start()
    }
    
    func showSecondScreen(from navigationController: UINavigationController) {
        let secondCoordinator = SecondCoordinator(nav: navigationController, dependencies: dependencies)
        coordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
    
    func showThirdScreen(from viewController: UIViewController) {
        let thirdCoordinator = ThirdCoordinator(vc: viewController, dependencies: dependencies)
        coordinators.append(thirdCoordinator)
        thirdCoordinator.start()
    }
}

extension Router {
    func uncoordinate(from coordinator: Coordinator) {
        guard let index = coordinators.firstIndex(of: coordinator) else { return }
        coordinators[index] = nil
        coordinators.remove(at: index)
    }
}
