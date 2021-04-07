//
//  UINavigationController+Pushable.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 1/17/21.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    public func pushViewController(viewController: UIViewController, animated: Bool, completion: (() -> ())? = {}) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        pushViewController(viewController, animated: animated)
        CATransaction.commit()
    }
    
    public func popViewController(animated: Bool, completion: (() -> ())? = {}) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        popViewController(animated: animated)
        CATransaction.commit()
    }
    
    public func popToRootViewController(animated: Bool, completion: (() -> ())? = {}) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        popToRootViewController(animated: animated)
        CATransaction.commit()
    }
    
}
