//
//  SpyStatementPrinter.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

class SpyStatementPrinter: StatementPrinter {

    private(set) var addPrintCalls: [[Transaction]] = []
    override func print(transactions: [Transaction]) {
        addPrintCalls.append(transactions)
        super.print(transactions: transactions)
    }
}
