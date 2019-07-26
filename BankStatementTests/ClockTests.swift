//
//  ClockTests.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import BankStatement

class ClockTests: XCTestCase {

    func test_dateToString() {
        let clock = TestableClock()

        XCTAssertEqual("01/01/2004", clock.dateToString())
    }
}
