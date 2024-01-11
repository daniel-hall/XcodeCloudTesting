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
            (increment: 5, decrement: 5, result: 0),
            (increment: 20, decrement: 10, result: 10),
            (increment: 50, decrement: 1, result: 49),
            (increment: 100, decrement: 50, result: 50)
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
