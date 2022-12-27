//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class SettingsScreen:BaseTest{
    public var settingsText = "Settings"
    public var saveBtnLabel = "Save"
    public var cancelBtnLabel = "Cancel"
 
    func isSettingsTextExist()->Bool{
        let settingsStaticTextElement:XCUIElement = app.staticTexts[settingsText]
        settingsStaticTextElement.waitForExistence(timeout: 5)
        return settingsStaticTextElement.exists
    }
    
    func tapCancelBtn(){
        app.buttons[cancelBtnLabel].firstMatch.tap()
    }
    
    func tapSaveBtn(){
        app.buttons[saveBtnLabel].firstMatch.tap()
    }
    
    
    
}
