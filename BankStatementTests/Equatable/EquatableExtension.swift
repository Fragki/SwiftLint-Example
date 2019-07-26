//
//  EquatableExtension.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

extension Transaction: Equatable {}

public func == (lhs: Transaction, rhs: Transaction) -> Bool {
    return lhs.date == rhs.date && lhs.amount == rhs.amount
}
