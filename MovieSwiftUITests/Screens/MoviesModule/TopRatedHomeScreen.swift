//
//  TopRatedHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 26/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import Foundation
class TopRatedHomeScreen:BaseTest{
    public var topRatedLabel = "Top Rated"
    
    func isTopRatedScreenLabelTextExist()->Bool{
        let topRatedStaticTextElement = app.staticTexts[topRatedLabel]
        topRatedStaticTextElement.waitForExistence(timeout: 5)
        return app.staticTexts[topRatedLabel].exists
    }
}
