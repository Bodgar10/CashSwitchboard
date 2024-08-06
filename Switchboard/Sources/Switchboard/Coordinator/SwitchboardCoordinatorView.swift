
import Foundation
import SwiftUI

@available(iOS 16, *)
public struct SwitchboardCoordinatorView<Coordinator>: View where Coordinator: SwitchboardCoordinatorProtocol {

    // MARK: - Properties

    @ObservedObject private var coordinator: Coordinator
    let config: SwitchboardConfigurationProtocol

    // MARK: - Initializer

    public init(coordinator: Coordinator, config: SwitchboardConfigurationProtocol) {
        self.coordinator = coordinator
        self.config = config
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .root)
                .navigationDestination(for: SwitchboardPage.self) { page in
                    coordinator.build(page: page)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("Some action")
                        })
                        {
                            Image(systemName: "globe.fill")
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .background(
                                    Color.blue.frame(width: 35, height: 35)
                                        .clipShape(RoundedRectangle(cornerRadius: 6.0))
                                )
                        }
                    }
                }
        }
        .environmentObject(coordinator)
    }
}