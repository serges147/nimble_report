//
//  Tests.swift
//  Tests
//

import Nimble
import XCTest

class Tests: XCTestCase {

    struct Xxx: Equatable {

        let value: Int
    }

    func testCompiles() throws {

        let xxx = Xxx(value: 42)
        expect(xxx) == Xxx(value: 42)
    }

    func testDoesNotCompile__but_used_to_on_xcode_12_4() throws {

        let xxx = Xxx(value: 13)
        expect(xxx) == .init(value: 13)
    }

    func testWorkaround() throws {

        let xxx = Xxx(value: 7)
        expect(xxx) == .some(.init(value: 7))
    }
}
