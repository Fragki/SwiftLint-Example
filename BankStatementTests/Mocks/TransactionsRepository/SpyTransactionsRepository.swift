//
//  SpyTransactionsRepository.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

class SpyTransactionsRepository: TransactionsRepository {

    private(set) var addDepositCalls: [Transaction] = []
    override func addDeposit(_ transaction: Transaction) {
        addDepositCalls.append(transaction)
        super.addDeposit(transaction)
    }

    private(set) var addWithdrawCalls: [Transaction] = []
    override func addWithdraw(_ transaction: Transaction) {
        addWithdrawCalls.append(transaction)
        super.addWithdraw(transaction)
    }

}
