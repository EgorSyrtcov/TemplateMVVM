//
//  MainView.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit
import SnapKit

final class MainView: AppView {
    
    var completionClose: Callback?
    
    private lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Next", for: .normal)
        button.addTarget(self, action: #selector(handleNextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func assemble() {
        super.assemble()
        
        setupLayout()
        interactions()
    }
    
    override func setup() {
        backgroundColor = .green
        addSubview(nextButton)
    }
    
    private func setupLayout() {
        nextButton.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 100, height: 50))
            make.center.equalToSuperview()
        }
    }
    
    private func interactions() {
       
    }
}

extension MainView {
    
    @objc func handleNextButtonTapped() {
        completionClose?()
    }
}
