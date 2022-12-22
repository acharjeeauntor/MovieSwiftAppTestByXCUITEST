//
//  MoviesTest.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class MoviesTest:BaseTest{
    let nowPlayingMoviesScreen = NowPlayingMoviesScreen()
    let common = Common()
    let movieName = MovieScreenData.movieName.rawValue
    let firstScreenLabel = MovieScreenData.firstScreenLabelText.rawValue
    
    func testSearchMovie(){
        nowPlayingMoviesScreen.searchMovie(movieName:movieName )
        XCTAssertEqual(nowPlayingMoviesScreen.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
    func testScrollInMovieList(){
        common.swipeUPDOWN()
    }
    
    func testScreenLabel(){
        XCTAssert(nowPlayingMoviesScreen.getNowPlayingMoviesScreenLocator().exists,"Screen Label Doesn't Exist")
        //print(`My Value::::::::: \(nowPlayingMoviesScreen.getNowPlayingMoviesScreenLabel())`)
        XCTAssertEqual(nowPlayingMoviesScreen.getNowPlayingMoviesScreenLabel(),firstScreenLabel)
    }
    
}
