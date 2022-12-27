//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class MovieScreenHeader:BaseTest{
    public var settingsIconLabelText = "Wrench"
     
    
    func clickOnSettingsIcon(){
        app.buttons[settingsIconLabelText].tap()
    }
    
    
    
}
