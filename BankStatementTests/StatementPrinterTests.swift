//
//  StatementPrinterTests.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import BankStatement

class StatementPrinterTests: XCTestCase {

    func test_prints_header() {
        let console = SpyConsole()
        let printer = StatementPrinter(console: console)

        printer.print(transactions: [])

        XCTAssertEqual(["Date        || Amount  || Balance"], console.printLineCalls)
    }

    func test_prints_transactions_in_reverse_order() {
        let console = SpyConsole()
        let printer = StatementPrinter(console: console)

        printer.print(transactions: [Transaction(date: "01/02/2004", amount: 100),
                                     Transaction(date: "03/04/2004", amount: -50)])

        XCTAssertEqual(["Date        || Amount  || Balance",
                        "03/04/2004  || -50     || 50",
                        "01/02/2004  || 100     || 100"
            ], console.printLineCalls)
    }
}
