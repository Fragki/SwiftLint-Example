//
//  StubTransactionsRepository.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

class StubTransactionsRepository: TransactionsRepository {

    var stubTransactions: [Transaction] = []
    override func allTransactions() -> [Transaction] {
        return stubTransactions
    }
}
