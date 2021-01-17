//
//  ModalCoordinator.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/19/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class ModalCoordinator: Coordinator {
    
  override init(parent: Coordinator? = nil, dependencies: Dependencies, transition: Transition) {
    super.init(parent: parent, dependencies: dependencies, transition: transition)
    viewController?.modalPresentationCapturesStatusBarAppearance = true
    viewController?.modalPresentationStyle = transition.style
  }
  
  override func coordinate(completion: (() -> Void)?) {
    guard let parentViewController = parent?.viewController else {
        fatalError("Parent must be inited before.")
    }
    guard let viewController = self.viewController else {
      fatalError("ModalCoordinator's viewController is nil.")
    }
    parentViewController.present(viewController, animated: transition.animated, completion: completion)
  }
  
  override func uncoordinate(completion: (() -> Void)?) {
    guard let viewController = self.viewController else {
      fatalError("ModalCoordinator's viewController is nil.")
    }
    guard viewController.isBeingDismissed else {
      viewController.dismiss(animated: transition.animated, completion: completion)
      return
    }
    viewController.dismiss(animated: transition.animated)
    completion?()
  }
    
  override func interactions() { }
}
