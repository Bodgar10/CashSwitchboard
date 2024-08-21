
import Foundation
import SwiftUI

public protocol CashSwitchboardViewModelProtocol: ObservableObject {
    
    // MARK: - Initializer
    
    init(configuration: CashSwitchboardConfigurationProtocol, bundleMainApp: Bundle)
}

public protocol CashSwitchboardConfigurationProtocol: AnyObject {
    
    // MARK: - Properties
    
    var config: [String: AnyObject] { get set }
}

public protocol CashSwitchboardCoordinatorProtocol: ObservableObject {

    // MARK: - Properties

    var path: NavigationPath { get set }

    // MARK: - Functions

    init(path: NavigationPath, configuration: CashSwitchboardConfigurationProtocol, bundleMainApp: Bundle?)
    func push(page: CashSwitchboardPage)
    func popToRoot()
    func pop()
    
    associatedtype view: View
    func build(page: CashSwitchboardPage) -> view
}