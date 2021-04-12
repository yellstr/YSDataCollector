//
//  ViewController.swift
//  YSDCTest
//
//  Created by Alim Osipov on 12.04.2021.
//

import UIKit
import YSDataCollector

class ViewController: UIViewController {

    private var coordinator = Factory.createCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dcView = coordinator.rootView
        self.view.addSubview(dcView)
        dcView.translatesAutoresizingMaskIntoConstraints = false
        dcView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        dcView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        dcView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        dcView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }

    func userInfoConfig() -> ScreenConfig {
        return ScreenConfig("User Info")
    }
}

