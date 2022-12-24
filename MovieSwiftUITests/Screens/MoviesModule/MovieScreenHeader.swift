//
//  NowPlayingMoviesPage.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.

import XCTest

class MovieScreenHeader:BaseTest{
    enum MovieScreenHeaderIdentifier:String{
           case settingsIconLabelText = "Wrench"
       }
    
    func clickOnSettings(){
        app.buttons[MovieScreenHeaderIdentifier.settingsIconLabelText.rawValue].tap()
    }
    
    
    
}
