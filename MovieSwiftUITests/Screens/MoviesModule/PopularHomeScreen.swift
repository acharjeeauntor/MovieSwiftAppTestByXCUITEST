//
//  PopularHomeScreen.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 26/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import Foundation
class PopularHomeScreen:BaseTest{
    public var popularLabel = "Popular"
    
    func isPopularLabelTextExist()->Bool{
        let popularStaticTextElement = app.staticTexts[popularLabel]
        popularStaticTextElement.waitForExistence(timeout: 5)
        return app.staticTexts[popularLabel].exists
    }
}
