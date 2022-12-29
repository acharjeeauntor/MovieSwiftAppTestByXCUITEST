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
    public var regionBtnLabel = "Region"
    public var alwaysShowOriginalTitleSwitchLabel = "Always show original title"
    
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
    
    func toggleAlwaysShowOriginalTitleSwitch(){
        let alwaysShowOriginalTitleSwitchElement:XCUIElement = app.collectionViews.switches[alwaysShowOriginalTitleSwitchLabel]
        alwaysShowOriginalTitleSwitchElement.tap()
        app.wait(for: XCUIApplication.State.unknown, timeout: 5)
    }
    
    func getAlwaysShowOriginalTitleSwitchValue() -> Any {
        let alwaysShowOriginalTitleSwitchElement:XCUIElement = app.collectionViews.switches[alwaysShowOriginalTitleSwitchLabel]
        return alwaysShowOriginalTitleSwitchElement.value as Any
    }
    
    func tapRegion(countryName:String){
        let collectionViewsQuery = app.collectionViews
        app.staticTexts[regionBtnLabel].tap()
        collectionViewsQuery.buttons[countryName].tap()
    }
    
    func getRegionCountryName()->String{
        let fullRegionLabel = app.buttons.element(boundBy: 8).label
        let countryName = fullRegionLabel.split(separator: ",")[1].trimmingCharacters(in: .whitespaces)
        return String(countryName)
    }
    
    
}
