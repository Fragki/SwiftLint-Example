//
//  Clock.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class Clock {

    private let dateFormatter = DateFormatter()

    func dateToString() -> String {
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: today())
    }

    func today() -> Date {
        return  Date()
    }
}
