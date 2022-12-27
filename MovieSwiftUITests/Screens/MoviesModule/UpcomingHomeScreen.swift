//
//  UpcomingHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 26/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import Foundation
import XCTest

class UpcomingHomeScreen:BaseTest{
    public var upcomingLabel = "Upcoming"
    
    func isUpcomingTextExist()->Bool{
        let upcomingStaticTextElement:XCUIElement = app.staticTexts[upcomingLabel]
        upcomingStaticTextElement.waitForExistence(timeout: 5)
        return upcomingStaticTextElement.exists
    }
}
