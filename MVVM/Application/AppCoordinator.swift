//
//  AppCoordinator.swift
//  MVVM
//
//  Created by Egor Syrtcov on 11/17/20.
//

import UIKit

final class AppCoordinator: Coordinator {
  
  private let window: UIWindow

  override init(parent: Coordinator?, dependencies: Dependencies, transition: Transition) {
    fatalError("ApplicationCoordinator can't have parent.")
  }

  init(window: UIWindow, dependencies: Dependencies) {
    self.window = window
    super.init(dependencies: dependencies, transition: .modal(animated: false, style: .currentContext))
  }

  override func createViewController() -> UIViewController {
    return UINavigationController(rootViewController: ApplicationLaunchViewController())
  }

  override func coordinate(completion: (() -> Void)?) {
    fatalError("ApplicationCoordinator must use start().")
  }

  override func uncoordinate(completion: (() -> Void)?) {
    fatalError("ApplicationCoordinator can't be uncoordinated.")
  }

    func start() {
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        
        let deadlineTime = DispatchTime.now() + .seconds(3)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            self.fetchSettingsAndHandleAppState()
        }
    }
  
  
    
    private func fetchSettingsAndHandleAppState() {
        
        DispatchQueue.main.async {
          self.dependencies.router.showMainScreen(from: self)
        }
    }
  
  override func interactions() { }
}
