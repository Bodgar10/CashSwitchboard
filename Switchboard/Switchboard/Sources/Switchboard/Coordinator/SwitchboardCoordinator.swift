
import Foundation
import SwiftUI

public enum SwitchboardPage: Hashable {
    case root
}

@available(iOS 16, *)
public class SwitchboardCoordinator: SwitchboardCoordinatorProtocol {

    // MARK: - Properties

    @Published public var path = NavigationPath()
    private let configuration: SwitchboardConfigurationProtocol
    private let bundleMainApp: Bundle?

    // MARK: - Initializer

    public required init(path: NavigationPath = NavigationPath(), configuration: SwitchboardConfigurationProtocol, bundleMainApp: Bundle? = nil) {
        self.path = path
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
    
    // MARK: - Functions

    public func push(page: SwitchboardPage) {
        path.append(page)
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func pop() {
        path.removeLast()
    }

    @ViewBuilder public func build(page: SwitchboardPage) -> some View {
        switch page {
        case .root:
            SwitchboardView(
                viewModel: SwitchboardViewModel(
                    configuration: configuration,
                    bundleMainApp: bundleMainApp ?? .main
                )
            )
        }
    }
}