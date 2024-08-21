
import Foundation
import SwiftUI

public enum CashSwitchboardPage: Hashable {
    case root
}

@available(iOS 16, *)
public class CashSwitchboardCoordinator: CashSwitchboardCoordinatorProtocol {

    // MARK: - Properties

    @Published public var path = NavigationPath()
    private let configuration: CashSwitchboardConfigurationProtocol
    private let bundleMainApp: Bundle?

    // MARK: - Initializer

    public required init(path: NavigationPath = NavigationPath(), configuration: CashSwitchboardConfigurationProtocol, bundleMainApp: Bundle? = nil) {
        self.path = path
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
    
    // MARK: - Functions

    public func push(page: CashSwitchboardPage) {
        path.append(page)
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func pop() {
        path.removeLast()
    }

    @ViewBuilder public func build(page: CashSwitchboardPage) -> some View {
        switch page {
        case .root:
            CashSwitchboardView(
                viewModel: CashSwitchboardViewModel(
                    configuration: configuration,
                    bundleMainApp: bundleMainApp ?? .main
                )
            )
        }
    }
}