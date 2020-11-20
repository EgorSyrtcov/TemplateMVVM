//
//  UIView+Addsubviews.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/21/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        addSubviews(views)
    }
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
}
