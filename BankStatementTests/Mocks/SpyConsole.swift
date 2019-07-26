//
//  SpyConsole.swift
//  BankStatementTests
//
//  Created by Fragkiskos Katsimpas on 28/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation
@testable import BankStatement

class SpyConsole: IConsole {

    private(set) var printLineCalls: [String] = []
    func printLine(_ text: String) {
        printLineCalls.append(text)
    }
}
