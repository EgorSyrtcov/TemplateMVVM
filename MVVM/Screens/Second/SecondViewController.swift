//
//  SecondViewController.swift
//  MVVM
//
//  Created by Egor Syrtcov on 1/16/21.
//

import UIKit

final class SecondViewController: AppViewController<SecondView, SecondViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
    }
    
    override func bind() {
        guard let viewModel = viewModel else { return }
        
        snpView.completionClose = {
            viewModel.next()
        }
    }
}

extension SecondViewController {
    
    private func setupNavBar() {
        navigationItem.title = "Second"
    }
}
