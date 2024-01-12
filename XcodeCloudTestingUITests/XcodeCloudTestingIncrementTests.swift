//
//  XcodeCloudTestingUITests.swift
//  XcodeCloudTestingUITests
//
//  Created by Daniel Hall  on 1/11/24.
//

import XCTest

final class XcodeCloudTestingIcrementTests: XCTestCase {

    func testIncrement() throws {
        let app = XCUIApplication()

        let examples = [5, 50, 100, 150]

        examples.forEach { example in
            app.terminate()
            app.launch()
            (0..<example).forEach { _ in
                app.buttons["incrementButton"].tap()
            }
            XCTAssertTrue(app.staticTexts["Tap Count: \(example)"].exists)
        }
    }
}

final class XcodeCloudTestingIcrementTestsTwo: XCTestCase {

    func testIncrementTwo() throws {
        let app = XCUIApplication()

        let examples = [15, 55, 105, 155]

        examples.forEach { example in
            app.terminate()
            app.launch()
            (0..<example).forEach { _ in
                app.buttons["incrementButton"].tap()
            }
            XCTAssertTrue(app.staticTexts["Tap Count: \(example)"].exists)
        }
    }
}
