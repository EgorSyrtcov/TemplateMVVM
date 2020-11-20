//
//  ApplicationLaunchViewController.swift
//  MVVM
//
//  Created by Egor Syrtcov on 11/17/20.
//

import UIKit
import AVFoundation

final class ApplicationLaunchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.navigationBar.isHidden = false

    }
}

