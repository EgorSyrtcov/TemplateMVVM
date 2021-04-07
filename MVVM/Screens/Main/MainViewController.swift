//
//  MainViewController.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

final class MainViewController: AppViewController<MainView, MainViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
    }
    
    override func bind() {
        guard let viewModel = viewModel else { return }
        
        snpView.completionClose = {
            viewModel.dismiss()
        }
    }
}

extension MainViewController {
    
    private func setupNavBar() {
        
        navigationItem.title = "Main"
        navigationItem.setHidesBackButton(true, animated: false)
    }
}


