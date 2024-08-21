
import Foundation
import SwiftUI

public struct CashSwitchboardView<VM>: View where VM: CashSwitchboardViewModelProtocol {

    // MARK: - Properties

    @ObservedObject var viewModel: VM

    // MARK: - Initialize

    public init( viewModel: VM) {
        self.viewModel = viewModel    
    }

    public var body: some View {
        Text("CashSwitchboard View")
    }
}

struct CashSwitchboardView_Previews: PreviewProvider {
    static var previews: some View {
        CashSwitchboardView(viewModel: CashSwitchboardViewModel(configuration: configMock(), bundleMainApp: .main))
    }
}

class configMock: CashSwitchboardConfigurationProtocol {
    var config: [String : AnyObject] = ["Any" : "Any" as AnyObject]
}