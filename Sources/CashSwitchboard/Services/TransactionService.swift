//
//  TransactionService.swift
//
//
//  Created by Bodgar Espinosa Miranda on 16/09/24.
//

import Foundation
import Common

public protocol TransactionService: Service {
    func fetchTransactions() -> [Transaction]
}
