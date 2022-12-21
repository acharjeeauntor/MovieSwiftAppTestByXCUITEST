//
//  BaseTest.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
    }
}
