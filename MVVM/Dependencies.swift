//
//  Dependencies.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/20/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

final class Dependencies {
    
    var router: Router {
        return _router
    }
    
    private lazy var _router = Router(dependencies: self)
}
