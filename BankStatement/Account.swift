//
//  Account.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class Account {

    private let transactionsRepository: TransactionsRepository
    private let statementPrinter: StatementPrinter
    private let transactionFactory: TransactionFactory

    init(transactionsRepository: TransactionsRepository,
         statementPrinter: StatementPrinter,
         transactionFactory: TransactionFactory) {
        self.transactionsRepository = transactionsRepository
        self.statementPrinter = statementPrinter
        self.transactionFactory = transactionFactory
    }

    func deposit(_ amount: Int) {
        let transaction = transactionFactory.createDepositTransaction(amount)
        transactionsRepository.addDeposit(transaction)
    }

    func withdraw(_ amount: Int) {
        let transaction = transactionFactory.createWithdrawTransaction(amount)
        transactionsRepository.addWithdraw(transaction)
    }

    func printStatement() {
        let transactions = transactionsRepository.allTransactions()
        statementPrinter.print(transactions: transactions)
    }
}
