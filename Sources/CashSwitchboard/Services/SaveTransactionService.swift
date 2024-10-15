//
//  SaveTransactionService.swift
//
//
//  Created by Bodgar Espinosa Miranda on 14/10/24.
//

import Foundation
import Common

public protocol SaveTransactionService: Service {
    func save(transaction: CashSwitchboard.Transaction) -> Bool
}
