//
//  StubClock.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

class StubClock: Clock {

    var stubDate = ""
    override func dateToString() -> String {
        return stubDate
    }
}
