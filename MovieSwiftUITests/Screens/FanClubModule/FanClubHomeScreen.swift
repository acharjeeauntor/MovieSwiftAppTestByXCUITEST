//
//  FanClubHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 24/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class FanClubHomeScreen:BaseTest{
    public var fanClubLabel = "Fan Club"
    
    func isFanClubTextExist()->Bool{
        let fanClubStaticTextElement:XCUIElement = app.staticTexts[fanClubLabel]
        fanClubStaticTextElement.waitForExistence(timeout: 5)
        return fanClubStaticTextElement.exists
    }
    
    
    
    
}
