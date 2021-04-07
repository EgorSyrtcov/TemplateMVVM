//
//  NavigationCoordinator.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/19/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class NavigationCoordinator: Coordinator {
    
    private let navigationController: UINavigationController!
    
    override init(parent: Coordinator? = nil, dependencies: Dependencies, transition: Transition) {
        guard let parent = parent,
              let parentViewController = parent.viewController else {
            fatalError("Parent must be inited before.")
        }
        if let navi = parentViewController as? UINavigationController ?? parentViewController.navigationController {
            self.navigationController = navi
        } else {
            self.navigationController = UINavigationController(rootViewController: UIViewController())
            parentViewController.present(self.navigationController, animated: false, completion: nil)
        }
        super.init(parent: parent, dependencies: dependencies, transition: transition)
    }
    
    override func coordinate(completion: (() -> Void)?) {
        guard let parentViewController = parent?.viewController else {
            fatalError("Parent must be inited before.")
        }
        guard let viewController = self.viewController else {
            fatalError("NavigationCoordinator's viewController is nil.")
        }
        
        navigationController.pushViewController(viewController: viewController, animated: transition.animated, completion: completion)
    }
    
    override func uncoordinate(completion: (() -> Void)?) {
        guard let viewController = self.viewController else {
            fatalError("NavigationCoordinator's viewController is nil.")
        }
        
        navigationController.popViewController(animated: transition.animated, completion: completion)
    }
    
    func uncoordinateToRoot(completion: (() -> Void)?) {
        guard let viewController = self.viewController else {
            fatalError("NavigationCoordinator's viewController is nil.")
        }
        
        navigationController.popToRootViewController(animated: transition.animated, completion: completion)
    }
    
    override func interactions() { }
}
