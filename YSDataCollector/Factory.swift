//
//  Factory.swift
//  YSDataCollector
//
//  Created by Alim Osipov on 12.04.2021.
//

import Foundation

public class Factory {
    public static func createCoordinator(with storageManager: StorageManagerProtocol? = nil) -> CoordinatorProtocol {
        return Coordinator()
    }
}
