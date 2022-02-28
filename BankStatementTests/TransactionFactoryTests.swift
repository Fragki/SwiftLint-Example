//
//  TransactionFactoryTests.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import BankStatement

class TransactionFactoryTests: XCTestCase {

    func test_createDepositTransaction() {
        let stubClock = StubClock()
        let sut = TransactionFactory(clock: stubClock)
        stubClock.stubDate = "27/2/2009"

        let transaction = sut.createDepositTransaction(20)

        XCTAssertEqual(Transaction(date: "27/2/2009", amount: 20), transaction)
    }

    func test_createWithdrawTransaction() {
        let stubClock = StubClock()
        let sut = TransactionFactory(clock: stubClock)
        stubClock.stubDate = "27/2/2009"

        let transaction = sut.createWithdrawTransaction(20)

        XCTAssertEqual(Transaction(date: "27/2/2009", amount: -20), transaction)
    }
}
