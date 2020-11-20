//
//  AppViewController.swift
//  ImagicPresets
//
//  Created by Egor Syrtcov on 10/18/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class AppViewController<V: UIView, M: AppViewModel>: UIViewController {
    
    deinit {
        print("deinit viewcontroller: \(String(describing: self))")
    }
    
    var snpView: V {
        return view as! V
    }
    
    var viewModel: M? {
        didSet {
            bind()
        }
    }
    
    override func loadView() {
        super.loadView()
        view = V(frame: view.frame)
    }
    
    func bind() { }
}
