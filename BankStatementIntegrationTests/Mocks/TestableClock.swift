//
//  TestableClock.swift
//  BankStatementIntegrationTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

class TestableClock: Clock {

    var day: Int = 1
    var month: Int = 1
    var year: Int = 2004

    override func today() -> Date {
        return makeDate(year: year, month: month, day: day)
    }

    func set(year: Int, month: Int, day: Int) {
        self.year = year
        self.month = month
        self.day = day
    }

    private func makeDate(year: Int, month: Int, day: Int) -> Date {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(secondsFromGMT: 1)!
        let components = DateComponents(year: year, month: month, day: day)
        return calendar.date(from: components)!
    }
}
