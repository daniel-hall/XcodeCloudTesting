//
//  XcodeCloudTestingUITests.swift
//  XcodeCloudTestingUITests
//
//  Created by Daniel Hall  on 1/11/24.
//

import XCTest

final class XcodeCloudTestingDecrementTests: XCTestCase {

    func testDecrement() throws {
        let app = XCUIApplication()

        let examples = [
            (increment: 0, decrement: 1, result: -1),
            (increment: 10, decrement: 10, result: 0),
            (increment: 10, decrement: 5, result: 5)
        ]

        examples.forEach { example in
            app.terminate()
            app.launch()
            (0..<example.increment).forEach { _ in
                app.buttons["incrementButton"].tap()
            }
            XCTAssertTrue(app.staticTexts["Tap Count: \(example.increment)"].exists)
            (0..<example.decrement).forEach { _ in
                app.buttons["decrementButton"].tap()
            }
            XCTAssertTrue(app.staticTexts["Tap Count: \(example.result)"].exists)
        }
    }
}

final class XcodeCloudTestingDecrementTestsTwo: XCTestCase {

    func testDecrement() throws {
        let app = XCUIApplication()

        let examples = [
            (increment: 5, decrement: 5, result: 0),
            (increment: 15, decrement: 5, result: 10)
        ]

        examples.forEach { example in
            app.terminate()
            app.launch()
            (0..<example.increment).forEach { _ in
                app.buttons["incrementButton"].tap()
            }
            XCTAssertTrue(app.staticTexts["Tap Count: \(example.increment)"].exists)
            (0..<example.decrement).forEach { _ in
                app.buttons["decrementButton"].tap()
            }
            XCTAssertTrue(app.staticTexts["Tap Count: \(example.result)"].exists)
        }
    }
}
