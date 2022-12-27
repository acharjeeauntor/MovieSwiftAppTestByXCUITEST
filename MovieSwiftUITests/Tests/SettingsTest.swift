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
    
    //TCTC69: Verify Settings screen removed properly or not after clicking on Save button from settings screen
    func test69_TapSave(){
        movieScreenHeader.clickOnSettingsIcon()
        settingsScreen.tapSaveBtn()
        XCTAssert(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
    }
    
}
