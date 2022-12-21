//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class NowPlayingMoviesScreen:BaseTest{
    enum NowPlayingMoviesScreen:String{
           case searchPlaceholderText = "Search any movies or person"
           case cityInputFieldId = "city"
           case enrollBtnId = "enrollButton"
           case errorMsgLabel = "Please Enter City"
           case successMsgLabel = "Thanks for Joining!"
       }
    
    
    func searchMovie(movieName:String){
        let searchInputField = app.collectionViews.collectionViews.textFields[NowPlayingMoviesScreen.searchPlaceholderText.rawValue]
        searchInputField.tap()
        searchInputField.typeText(movieName)
    }
    
    
    
    
    
}
