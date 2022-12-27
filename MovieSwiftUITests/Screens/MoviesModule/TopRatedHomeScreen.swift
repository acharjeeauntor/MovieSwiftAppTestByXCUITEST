//
//  TopRatedHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 26/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import Foundation
import XCTest

class TopRatedHomeScreen:BaseTest{
    public var topRatedLabel = "Top Rated"
    
    func isTopRatedScreenLabelTextExist()->Bool{
        let topRatedStaticTextElement:XCUIElement = app.staticTexts[topRatedLabel]
        topRatedStaticTextElement.waitForExistence(timeout: 5)
        return topRatedStaticTextElement.exists
    }
}
