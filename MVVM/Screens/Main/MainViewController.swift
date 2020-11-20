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
        
    }
}

extension MainViewController {
    
    private func setupNavBar() {
      
        navigationItem.title = "Egor"
        navigationItem.setHidesBackButton(true, animated: false)
    }
}


