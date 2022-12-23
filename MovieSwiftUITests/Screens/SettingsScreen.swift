//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class SettingsScreen:BaseTest{
    enum SettingsScreenIdentifier:String{
           case settingsText = "Settings"
       }
    
    func isSettingsTextExist()->Bool{
        return app.staticTexts[SettingsScreenIdentifier.settingsText.rawValue].isHittable
    }
    
    
    
}
