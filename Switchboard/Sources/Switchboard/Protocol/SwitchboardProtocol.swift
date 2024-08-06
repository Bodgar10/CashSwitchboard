
import Foundation
import SwiftUI

public protocol SwitchboardViewModelProtocol: ObservableObject {
    
    // MARK: - Initializer
    
    init(configuration: SwitchboardConfigurationProtocol, bundleMainApp: Bundle)
}

public protocol SwitchboardConfigurationProtocol: AnyObject {
    
    // MARK: - Properties
    
    var config: [String: AnyObject] { get set }
}

public protocol SwitchboardCoordinatorProtocol: ObservableObject {

    // MARK: - Properties

    var path: NavigationPath { get set }

    // MARK: - Functions

    init(path: NavigationPath, configuration: SwitchboardConfigurationProtocol, bundleMainApp: Bundle?)
    func push(page: SwitchboardPage)
    func popToRoot()
    func pop()
    
    associatedtype view: View
    func build(page: SwitchboardPage) -> view
}