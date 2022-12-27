//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class NowPlayingHomeScreen:BaseTest{
    
    public var nowPlayingLabel = "Now Playing"
    public var avatarMovieNameText = "Avatar: The Way of Water"
    
    
    
    func isNowPlayingTextExist() -> Bool{
        let nowPlayingStaticTextElement:XCUIElement = app.staticTexts[nowPlayingLabel]
        nowPlayingStaticTextElement.waitForExistence(timeout: 5)
        return nowPlayingStaticTextElement.exists
    }
    
    
    //    func getNowPlayingMoviesScreenLabel() -> String{
    //        return app.staticTexts[NowPlayingMoviesScreen.nowPlayingMoviesScreenLabelText.rawValue].label
    //    }
    
    func getLabelOfAvatarMovie() -> String{
        return app.staticTexts[avatarMovieNameText].firstMatch.label
    }
    func getAvatarMovieTitelLocator() -> XCUIElement{
        return app.staticTexts[avatarMovieNameText]
    }
    
    
    
}
