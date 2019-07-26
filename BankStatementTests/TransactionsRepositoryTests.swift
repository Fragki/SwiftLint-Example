//
//  TransactionsRepositoryTests.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import BankStatement

class TransactionsRepositoryTests: XCTestCase {

    func test_addDeposit() {
        let transactionsRepository = TransactionsRepository()
//        clock.stubDate = "02/11/2015"

        transactionsRepository.addDeposit(Transaction(date: "02/11/2015", amount: 100))

        let transactions = transactionsRepository.allTransactions()
        XCTAssertEqual([Transaction(date: "02/11/2015", amount: 100)], transactions)
        XCTAssertEqual(1, transactions.count)
    }

    func test_addWithdraw() {
        let transactionsRepository = TransactionsRepository()
//        clock.stubDate = "02/11/2015"

        transactionsRepository.addWithdraw(Transaction(date: "02/11/2015", amount: -100))

        let transactions = transactionsRepository.allTransactions()
        XCTAssertEqual([Transaction(date: "02/11/2015", amount: -100)], transactions)
        XCTAssertEqual(1, transactions.count)
    }
}
