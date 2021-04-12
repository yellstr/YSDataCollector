//
//  Coordinator.swift
//  YSDataCollector
//
//  Created by Alim Osipov on 12.04.2021.
//

import Foundation
import UIKit

class Coordinator: CoordinatorProtocol {
    
    let identifier: String
    
    
    private var rootScreenConfig: ScreenConfig?
    private var rootVC: UINavigationController?
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    func setRoot(_ screenConfig:ScreenConfig) {
        rootScreenConfig = screenConfig
    }
    
    var rootView: UIView {
        guard rootVC == nil else { return rootVC!.view }
        guard let config = rootScreenConfig else {
            return errorView(with: "Root config was not set")
        }
        return UIView()
    }
    
    var isDataComplete: Bool {
        return false
    }

}

extension Coordinator {
    
    fileprivate func errorView(with text:String) -> UIView {
        let result = UIView()
        result.backgroundColor = .red
        let label = UILabel()
        label.text = text
        label.textColor = .black
        label.sizeToFit()
        result.addSubview(label)
        return result
    }
}
