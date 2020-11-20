//
//  Coordinable.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/19/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

protocol Coordinable {
    func start()
    func interactions()
}

class Coordinator: NSObject, Coordinable {
    func start() { }
    func interactions() { }
}
