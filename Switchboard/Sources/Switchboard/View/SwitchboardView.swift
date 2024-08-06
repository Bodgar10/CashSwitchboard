
import Foundation
import SwiftUI

public struct SwitchboardView<VM>: View where VM: SwitchboardViewModelProtocol {

    // MARK: - Properties

    @ObservedObject var viewModel: VM

    // MARK: - Initialize

    public init( viewModel: VM) {
        self.viewModel = viewModel    
    }

    public var body: some View {
        Text("Switchboard View")
    }
}

struct SwitchboardView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchboardView(viewModel: SwitchboardViewModel(configuration: configMock(), bundleMainApp: .main))
    }
}

class configMock: SwitchboardConfigurationProtocol {
    var config: [String : AnyObject] = ["Any" : "Any" as AnyObject]
}