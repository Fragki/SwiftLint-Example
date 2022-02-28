//
//  TransactionsRepository.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class TransactionsRepository {

    private var transactions: [Transaction] = []

    func addDeposit(_ transcaction: Transaction) {
        transactions.append(transcaction)
    }

    func addWithdraw(_ transcaction: Transaction) {
        transactions.append(transcaction)
    }

    func allTransactions() -> [Transaction] {
        return transactions
    }
}
