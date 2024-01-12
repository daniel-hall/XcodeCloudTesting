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

        let examples = [5, 25, 50]

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

        let examples = [0, 10, 30]

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
