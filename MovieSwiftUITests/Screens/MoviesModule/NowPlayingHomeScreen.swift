//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class NowPlayingHomeScreen:BaseTest{
          public var searchPlaceholder = "Search any movies or person"
          public var nowPlayingLabel = "Now Playing"
        public var avatarMovieNameText = "Avatar: The Way of Water"
    
    func searchMovie(movieName:String){
        let searchInputField = app.textFields[searchPlaceholder]
        searchInputField.tap()
        searchInputField.typeText(movieName)
    }

    func getSearchFieldValue() -> String{
        let searchInputField = app.textFields[searchPlaceholder]
        return searchInputField.value as! String
    }
    
    func isNowPlayingTextExist() -> Bool{
        return app.staticTexts[nowPlayingLabel].exists
    }
    
    func isSearchBoxPlaceholderExist() -> Bool{
        return app.textFields[searchPlaceholder].exists
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
