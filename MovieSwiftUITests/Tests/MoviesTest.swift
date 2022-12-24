//
//  MoviesTest.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class MoviesTest:BaseTest{
    let nowPlayingHomeScreen = NowPlayingHomeScreen()
    let movieScreenHeader = MovieScreenHeader()
    let settingsScreen = SettingsScreen()
    let common = Common()
    let movieName = MovieScreenData.movieName.rawValue
    let firstScreenLabel = MovieScreenData.firstScreenLabelText.rawValue
    let avatarMovieTitleText = MovieScreenData.avatarMovieTitle.rawValue
    
    
    
    
    
    
// TC6: Verify Screen Header(Now Playing) is Showing properly or not
    func test6_NowPlayingScreenLabel(){
        XCTAssertTrue(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
    }
    
//TC7: Verify Search box placeholder (Search any movies or person)is showing correctly or not.
    func test7_SearchPlaceholder(){
        XCTAssertTrue(nowPlayingHomeScreen.isSearchBoxPlaceholderExist(),"Search Field Placeholder Doesn't Exist")
    }
    
// TC8: Verify Search box is working properly or not
    func test8_SearchMovie(){
        nowPlayingHomeScreen.searchMovie(movieName:movieName )
        XCTAssertEqual(nowPlayingHomeScreen.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
//TC10: Verify movies list is scrolling properly or not
    func test10_ScrollInMovieList(){
        common.swipeUPDOWN()
        let labelOfAvatarMovie = nowPlayingHomeScreen.getLabelOfAvatarMovie()
        XCTAssertNotNil(labelOfAvatarMovie.range(of:avatarMovieTitleText))
        XCTAssert(nowPlayingHomeScreen.getAvatarMovieTitelLocator().exists)
    }
//
//    func test4_CheckSettingsBtn(){
//        movieScreenHeader.clickOnSettings()
//        print(settingsScreen.isSettingsTextExist())
//        XCTAssertTrue(settingsScreen.isSettingsTextExist(),"Settings text is not showing")
//    }
    
}
