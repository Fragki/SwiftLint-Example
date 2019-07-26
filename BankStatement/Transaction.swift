//
//  Transaction.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class Transaction {
    let date: String    //For simplification of the Kata. Otherwise type should be Date
    let amount: Int     //For simplification of the Kata. Otherwise type should be Decimal

    init(date: String, amount: Int) {
        self.date = date
        self.amount = amount
    }
}
