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
    
    func testSearchMovie(){
        nowPlayingMoviesScreen.searchMovie(movieName: "Avatar")
        
    }
    
}
