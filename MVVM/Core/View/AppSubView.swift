//
//  AppSubView.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class AppSubView: UIView, AppViewProtocol {
    
    init() {
        super.init(frame: .zero)
        assemble()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        assemble()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        assemble()
    }
    
    func assemble() {
        setup()
    }
    
    func setup() { }
    
}
