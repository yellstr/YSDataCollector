//
//  Interfaces.swift
//  YSDataCollector
//
//  Created by Alim Osipov on 12.04.2021.
//

import Foundation
import UIKit

public protocol StorageManagerProtocol {
    var storedDataSetIdentifiers: [String] { get }
    func storedDataSet(for identifier:String) -> StoredDataSetProtocol?
    func mediaData(for identifier:String) -> Data?
}

public protocol StoredDataSetProtocol {
    var jsonData: Data { get }
    var mediaIdentifiers: [String] { get }
}

public protocol CoordinatorProtocol {
    var identifier: String { get }
    func setRoot(_ screenConfig:ScreenConfig)
    // do not call methods below before setting root screen config
    var rootView: UIView { get }
    var isDataComplete: Bool { get }
}

public struct ScreenConfig {
    public let title: String
    public var subTitle: String?
    public var dataFields: [DataType] = []
    public init(_ title:String) {
        self.title = title
    }
}

public enum DataType {
    case label(text: String) // represented by a label with static text, does not collect data
    case separator(height: CGFloat) // just some whitespace, does not collect data
    case string(label: String?, prompt: String?, formatter: Formatter?) // represented by a text field
    case text(title: String?) // represented by a text view
    case multipleChoice(variants: [String]) // represented by a popup menu
    case choice // represented by an on/off switch
    case media // represented by media selector
    case childScreen(config:ScreenConfig) // represented by a separate sub-screen
}
