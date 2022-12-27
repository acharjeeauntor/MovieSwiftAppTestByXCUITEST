//
//  DiscoverHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 24/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class DiscoverHomeScreen:BaseTest{
    
public var randomBtnLabel = " · Random"
    
    func isRandomButtonExist()->Bool{
        let randomBtnElement:XCUIElement = app.buttons[randomBtnLabel]
        //app.wait(for: XCUIApplication.State.unknown, timeout: 5)
        randomBtnElement.waitForExistence(timeout: 10)
        return randomBtnElement.exists
    }
    
    
    
    
}
