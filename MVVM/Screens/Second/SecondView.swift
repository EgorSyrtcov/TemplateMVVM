//
//  SecondView.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit
import SnapKit

final class SecondView: AppView {
    
    var completionClose: Callback?
    
    private lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Next third VC", for: .normal)
        button.addTarget(self, action: #selector(handleNextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func assemble() {
        super.assemble()
        
        setupLayout()
        interactions()
    }
    
    override func setup() {
        backgroundColor = .yellow
        
    }
    
    private func setupLayout() {
        addSubview(nextButton)
    }
    
    private func interactions() {
        nextButton.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 100, height: 50))
            make.center.equalToSuperview()
        }
    }
}

extension SecondView {
    
    @objc func handleNextButtonTapped() {
        completionClose?()
    }
}
