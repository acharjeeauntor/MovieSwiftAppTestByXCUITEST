//
//  SettingsTest.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 27/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import Foundation
import XCTest

class SettingsTest:BaseTest{
    let movieScreenHeader = MovieScreenHeader()
    let settingsScreen = SettingsScreen()
    let nowPlayingHomeScreen = NowPlayingHomeScreen()
    
    
    //TC67: Verify Settings screen shown properly or not after clicking on Settings Icon from Any movies screen
    func test67_SeetingsLabel(){
        movieScreenHeader.clickOnSettingsIcon()
        XCTAssert(settingsScreen.isSettingsTextExist(),"Settings Screen Label Doesn't Exist")
    }
    
    //TC68: Verify Settings screen removed properly or not after clicking on Cancel button from settings screen
    func test68_TapCancel(){
        movieScreenHeader.clickOnSettingsIcon()
        settingsScreen.tapCancelBtn()
        XCTAssert(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
    }
    
    //TC69: Verify Settings screen removed properly or not after clicking on Save button from settings screen
    func test69_TapSave(){
        movieScreenHeader.clickOnSettingsIcon()
        settingsScreen.tapSaveBtn()
        XCTAssert(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
    }
    
    
    //TC70: Verify "Always show original title" toggle button working properly or not
    func test70_AlwaysShowOriginalTitleToggleBtn(){
        movieScreenHeader.clickOnSettingsIcon()
        settingsScreen.toggleAlwaysShowOriginalTitleSwitch()
//        if let num:Int = Int(settingsScreen.getAlwaysShowOriginalTitleSwitchValue(),radix:10){
//
//        }
        XCTAssertEqual(settingsScreen.getAlwaysShowOriginalTitleSwitchValue() as! String,"1")
        settingsScreen.toggleAlwaysShowOriginalTitleSwitch()
        XCTAssertEqual(settingsScreen.getAlwaysShowOriginalTitleSwitchValue() as! String,"0")
    }
    
    //TC71: Verify Region selection working properly or not
    func test71_Regionselection(){


    }
    
}
