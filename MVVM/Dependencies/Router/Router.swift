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
    func showMainScreen(from parent: Coordinator, completion: (() -> Void)? = nil) {
      let coordinator = MainCoordinator(
        parent: parent,
        dependencies: dependencies,
        transition: .push(animated: false, hidesBottomBarWhenPushed: true)
      )
      coordinators.append(coordinator)
      coordinator.coordinate(completion: completion)
    }
    
    func showSecondScreen(from parent: Coordinator, completion: (() -> Void)? = nil) {
      let coordinator = SecondCoordinator(
        parent: parent,
        dependencies: dependencies,
        transition: .push(animated: true, hidesBottomBarWhenPushed: true)
      )
      coordinators.append(coordinator)
      coordinator.coordinate(completion: completion)
    }
    
    func showThirdScreen(from parent: Coordinator, completion: (() -> Void)? = nil) {
      let coordinator = ThirdCoordinator(
        parent: parent,
        dependencies: dependencies,
        transition: .modal(animated: true, style: .overFullScreen)
      )
      coordinators.append(coordinator)
      coordinator.coordinate(completion: completion)
    }
}

extension Router {
    func uncoordinate(from coordinator: Coordinator) {
        guard let index = coordinators.firstIndex(of: coordinator) else { return }
        coordinators[index] = nil
        coordinators.remove(at: index)
    }
}
