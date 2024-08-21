
import Combine
import Foundation
import SwiftUI

public class CashSwitchboardViewModel: CashSwitchboardViewModelProtocol {

    // MARK: - Properties

    private let configuration: CashSwitchboardConfigurationProtocol
    private let bundleMainApp: Bundle

    // MARK: - Initializer

    public required init(configuration: CashSwitchboardConfigurationProtocol, bundleMainApp: Bundle) {
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
}