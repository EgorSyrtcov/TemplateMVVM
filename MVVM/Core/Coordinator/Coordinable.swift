//
//  Coordinable.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/19/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

enum Transition {
  case modal(animated: Bool, style: UIModalPresentationStyle)
  case push(animated: Bool, hidesBottomBarWhenPushed: Bool)
  
  var animated: Bool {
    switch self {
    case .modal(let animated, _): return animated
    case .push(let animated, _): return animated
    }
  }
  
  var hidesBottomBarWhenPushed: Bool {
    switch self {
    case .modal: return false
    case .push(_, let hidesBottomBarWhenPushed): return hidesBottomBarWhenPushed
    }
  }
  
  var style: UIModalPresentationStyle {
    switch self {
    case .modal(_, let style): return style
    case .push: return .overFullScreen
    }
  }
}

class Coordinator: NSObject {
    let dependencies: Dependencies
    let parent: Coordinator?
    let transition: Transition

    var viewController: UIViewController? {
      guard controller == nil else { return controller }
      controller = createViewController()
      return controller
    }

    private var controller: UIViewController?

    init(parent: Coordinator? = nil, dependencies: Dependencies, transition: Transition) {
      self.parent = parent
      self.dependencies = dependencies
      self.transition = transition
      super.init()
      interactions()
    }

    deinit {
      print("deinit coordinator: \(String(describing: self))")
    }

    func createViewController() -> UIViewController {
      fatalError("createViewController() must be implemented by subclasses.")
    }

    func coordinate(completion: (() -> Void)?) {
      fatalError("coordinate() must be implemented by subclasses.")
    }

    func uncoordinate(completion: (() -> Void)?) {
      fatalError("uncoordinate() must be implemented by subclasses.")
    }

    func interactions() { }
}
