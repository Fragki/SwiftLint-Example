//
//  AccountTests.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import BankStatement

class AccountTests: XCTestCase {

    func test_deposit_stores_a_transaction() {
        let spyTransactionsRepository = createTransactionsRepository()
        let stubClock = StubClock()
        let account = createAccount(transactionsRepository: spyTransactionsRepository, clock: stubClock)
        stubClock.stubDate = "12/12/2003"

        account.deposit(100)

        XCTAssertEqual([Transaction(date: "12/12/2003", amount: 100)], spyTransactionsRepository.addDepositCalls)
    }

    func test_withdraw_stores_a_transaction() {
        let spyTransactionsRepository = createTransactionsRepository()
        let stubClock = StubClock()
        let account = createAccount(transactionsRepository: spyTransactionsRepository, clock: stubClock)
        stubClock.stubDate = "12/12/2003"

        account.withdraw(100)

        XCTAssertEqual([Transaction(date: "12/12/2003", amount: -100)], spyTransactionsRepository.addWithdrawCalls)
    }

    func test_printStatement() {
        let stubTransactionsRepository = StubTransactionsRepository()
        let spyStatementPrinter = SpyStatementPrinter(console: SpyConsole())
        let transactionFactory = TransactionFactory(clock: Clock())
        let account = Account(transactionsRepository: stubTransactionsRepository,
                              statementPrinter: spyStatementPrinter, transactionFactory: transactionFactory)

        stubTransactionsRepository.stubTransactions = [Transaction(date: "12/12/2003", amount: 100)]

        account.printStatement()

        let expected: [[Transaction]] = [[Transaction(date: "12/12/2003", amount: 100)]]
        XCTAssertEqual(expected, spyStatementPrinter.addPrintCalls)
    }

    private func createAccount(transactionsRepository: TransactionsRepository, clock: Clock) -> Account {
        let spyStatementPrinter = SpyStatementPrinter(console: SpyConsole())
        let transactionFactory = TransactionFactory(clock: clock)

        return Account(transactionsRepository: transactionsRepository, statementPrinter: spyStatementPrinter, transactionFactory: transactionFactory)
    }

    private func createTransactionsRepository() -> SpyTransactionsRepository {
        return SpyTransactionsRepository()
    }
}
