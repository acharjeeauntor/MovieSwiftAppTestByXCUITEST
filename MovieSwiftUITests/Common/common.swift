//
//  common.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 22/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest
class Common:BaseTest{
    public var searchPlaceholder = "Search any movies or person"
    
    func swipeUPDOWN(){
        app.swipeUp()
        app.swipeDown()
    }
    
    func swipeLeftFiveTime(){
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
    }
    func swipeRightFiveTime(){
        app.swipeRight()
        app.swipeRight()
        app.swipeRight()
        app.swipeRight()
        app.swipeRight()
    }
    
    func searchMovie(movieName:String){
        let searchInputField = app.textFields[searchPlaceholder]
        searchInputField.tap()
        searchInputField.typeText(movieName)
    }

    func getSearchFieldValue() -> String{
        let searchInputField = app.textFields[searchPlaceholder]
        return searchInputField.value as! String
    }
    
    func isSearchBoxPlaceholderExist() -> Bool{
        return app.textFields[searchPlaceholder].exists
    }
    func swipeToUpComingScreen(){
        app.swipeLeft()
    }
    func swipeToTrendingScreen(){
        app.swipeLeft()
        app.swipeLeft()
    }
    func swipeToPopularScreen(){
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
    }
    func swipeToTopRatedScreen(){
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
        app.swipeLeft()
    }
}
