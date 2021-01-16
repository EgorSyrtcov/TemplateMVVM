//
//  ThirdViewModel.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import Foundation

protocol ThirdViewModelDelegate: class {
    
}

final class ThirdViewModel: AppViewModel {
    
    weak var delegate: ThirdViewModelDelegate?
    
}
