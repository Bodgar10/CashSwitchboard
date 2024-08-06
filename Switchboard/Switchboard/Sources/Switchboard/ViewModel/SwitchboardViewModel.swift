
import Combine
import Foundation
import SwiftUI

public class SwitchboardViewModel: SwitchboardViewModelProtocol {

    // MARK: - Properties

    private let configuration: SwitchboardConfigurationProtocol
    private let bundleMainApp: Bundle

    // MARK: - Initializer

    public required init(configuration: SwitchboardConfigurationProtocol, bundleMainApp: Bundle) {
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
}