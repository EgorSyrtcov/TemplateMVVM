//
//  MainViewModel.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

protocol MainViewModelDelegate: class {
    func dismiss()
}

final class MainViewModel: AppViewModel {
    
    weak var delegate: MainViewModelDelegate?
    
    func dismiss() {
        delegate?.dismiss()
    }
}
