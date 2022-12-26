//
//  TrendingHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 26/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import Foundation

class TrendingHomeScreen:BaseTest{
    public var trendingLabel = "Trending"
    
    func isTrendingTextExist()->Bool{
        let trendingStaticTextElement = app.staticTexts[trendingLabel]
        trendingStaticTextElement.waitForExistence(timeout: 5)
        return app.staticTexts[trendingLabel].exists
    }
}
