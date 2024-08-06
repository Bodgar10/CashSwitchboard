
import Foundation
import SwiftUI

public struct SwitchboardModel: Identifiable, Hashable {

    // MARK: - Properties

    public var id: UUID
    public var name: String
    
    public static func == (lhs: SwitchboardModel, rhs: SwitchboardModel) -> Bool {
        return lhs.name == rhs.name
    }
    
    // MARK: - Initializer
    
    public init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}