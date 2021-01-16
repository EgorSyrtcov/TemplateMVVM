//
//  ThirdView.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit
import SnapKit

final class ThirdView: AppView {
    
    var completionClose: Callback?
    
    override func assemble() {
        super.assemble()
        
        setupLayout()
        interactions()
    }
    
    override func setup() {
        backgroundColor = .gray
    }
    
    private func setupLayout() {
        
    }
    
    private func interactions() {
        
    }
}

extension ThirdView {
    
    @objc func handleNextButtonTapped() {
        completionClose?()
    }
}

