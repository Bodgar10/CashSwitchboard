//
//  CashDestination.swift
//
//
//  Created by Bodgar Espinosa Miranda on 09/09/24.
//

import Foundation
import Common

public enum CashDestination : Destination {
    case balance
    case cashInOut(type: String)
    case historyBalance
}
