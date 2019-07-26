//
//  BankStatementIntegrationTests.swift
//  BankStatementIntegrationTests
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import BankStatement

class BankStatementIntegrationTests: XCTestCase {

    func test_print_statement_contains_all_trasanctions_in_order() {
        let expectedArray = ["Date        || Amount  || Balance",
                             "22/01/2016  || 500     || 1700",
                             "12/01/2016  || -300    || 1200",
                             "02/11/2015  || 1500    || 1500"
        ]

        let clock = TestableClock()
        let transactionFactory = TransactionFactory(clock: clock)

        let transactionsRepository = TransactionsRepository()
        let console = SpyConsole()
        let statementPrinter = StatementPrinter(console: console)
        let account = Account(transactionsRepository: transactionsRepository,
                              statementPrinter: statementPrinter, transactionFactory: transactionFactory)

        clock.set(year: 2015, month: 11, day: 2)
        account.deposit(1500)

        clock.set(year: 2016, month: 1, day: 12)
        account.withdraw(300)

        clock.set(year: 2016, month: 1, day: 22)
        account.deposit(500)

        account.printStatement()

        XCTAssertEqual( expectedArray, console.printLineCalls)
    }
}

class SpyConsole: IConsole {

    private(set) var printLineCalls: [String] = []
    func printLine(_ text: String) {
        printLineCalls.append(text)
    }
}
