//
//  Transaction.swift
//
//
//  Created by Bodgar Espinosa Miranda on 06/09/24.
//

import Foundation
import SwiftUI
import SwiftData
import DesignSystem

public enum TransactionType: String {
    case cashIn
    case cashOut
}

public enum Category: String, Codable {
    case cash = "Efectivo"
    case debit = "Débito"
    case credit = "Crédito"
    case salary = "Salario"
    case loan = "Préstamo"
    case freelancer = "Freelancer"
    
    var transactionType: TransactionType {
        switch self {
        case .cash, .debit, .credit:
            return .cashOut
        case .salary, .loan, .freelancer:
            return .cashIn
        }
    }
}

@Model
class Transaction: Identifiable, Hashable {
    
    let id = UUID()
    let category: Category
    let subcategory: String
    let amount: Double
    let date: Date
    
    var iconName: CashIcons {
        switch category {
        case .cash:
            CashIcons.moneyOut
        case .debit:
            CashIcons.debitCard
        case .credit:
            CashIcons.creditCard
        case .salary:
            CashIcons.moneyIn
        case .loan:
            CashIcons.moneyIn
        case .freelancer:
            CashIcons.moneyIn
        }
    }
    
    var colorAmount: Color {
        return category.transactionType == .cashIn ? .green : .red
    }
    
    init(category: Category, subcategory: String, amount: Double, date: Date) {
        self.category = category
        self.subcategory = subcategory
        self.amount = amount
        self.date = date
    }
    
    static func == (lhs: Transaction, rhs: Transaction) -> Bool {
            return lhs.id == rhs.id &&
                   lhs.category == rhs.category &&
                   lhs.subcategory == rhs.subcategory &&
                   lhs.amount == rhs.amount &&
                   lhs.date == rhs.date
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(category)
        hasher.combine(subcategory)
        hasher.combine(amount)
        hasher.combine(date)
    }
}
