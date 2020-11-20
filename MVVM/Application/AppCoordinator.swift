//
//  AppCoordinator.swift
//  MVVM
//
//  Created by Egor Syrtcov on 11/17/20.
//

import UIKit

final class AppCoordinator {
    
    private let window: UIWindow
    private let nav = UINavigationController(rootViewController: ApplicationLaunchViewController())
    private let dependencies: Dependencies
    
    init(window: UIWindow, dependencies: Dependencies) {
        self.window = window
        self.dependencies = dependencies
    }
    
    func start() {
        window.rootViewController = nav
        window.makeKeyAndVisible()
        
        let deadlineTime = DispatchTime.now() + .seconds(3)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            self.fetchSettingsAndHandleAppState()
        }
    }
    
    private func fetchSettingsAndHandleAppState() {
        
        DispatchQueue.main.async {
            self.dependencies.router.showMainScreen(from: self.nav)
        }
    }
}

