//
//  TransactionFactory.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class TransactionFactory {

    private let clock: Clock

    init(clock: Clock) {
        self.clock = clock
    }

    func createDepositTransaction(_ amount: Int) -> Transaction {
        return Transaction(date: clock.dateToString(), amount: amount)
    }

    func createWithdrawTransaction(_ amount: Int) -> Transaction {
        return Transaction(date: clock.dateToString(), amount: -amount)
    }
}
