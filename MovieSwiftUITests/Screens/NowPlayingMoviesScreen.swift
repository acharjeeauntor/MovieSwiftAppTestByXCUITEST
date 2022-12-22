//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class NowPlayingMoviesScreen:BaseTest{
    enum NowPlayingMoviesScreen:String{
           case searchPlaceholderText = "Search any movies or person"
           case nowPlayingMoviesScreenLabelText = "Now Playing"
       }
    
    
    func searchMovie(movieName:String){
        let searchInputField = app.collectionViews.collectionViews.textFields[NowPlayingMoviesScreen.searchPlaceholderText.rawValue]
        searchInputField.tap()
        searchInputField.typeText(movieName)
    }
    
    func getSearchFieldValue() -> String{
        let searchInputField = app.collectionViews.collectionViews.textFields[NowPlayingMoviesScreen.searchPlaceholderText.rawValue]
        return searchInputField.value as! String
    }
    
    func getNowPlayingMoviesScreenLocator() -> XCUIElement{
        return app.staticTexts[NowPlayingMoviesScreen.nowPlayingMoviesScreenLabelText.rawValue]
    }
    func getNowPlayingMoviesScreenLabel() -> String{
        return app.staticTexts[NowPlayingMoviesScreen.nowPlayingMoviesScreenLabelText.rawValue].label
    }
    
    
    
}
