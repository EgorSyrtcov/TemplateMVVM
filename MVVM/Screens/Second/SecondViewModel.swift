//
//  SecondViewModel.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit

protocol SecondViewModelDelegate: class {
    func next()
}

final class SecondViewModel: AppViewModel {
    
    weak var delegate: SecondViewModelDelegate?
    
    func next() {
        delegate?.next()
    }

}
