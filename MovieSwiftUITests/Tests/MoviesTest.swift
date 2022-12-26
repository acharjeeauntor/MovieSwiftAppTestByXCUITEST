//
//  MoviesTest.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 21/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest
import SwiftUIFlux
import Backend

class MoviesTest:BaseTest{
    
    // Screen Objects
    let nowPlayingHomeScreen = NowPlayingHomeScreen()
    let movieScreenHeader = MovieScreenHeader()
    let settingsScreen = SettingsScreen()
    let common = Common()
    let upcomingHomeScreen = UpcomingHomeScreen()
    let trendingHomeScreen = TrendingHomeScreen()
    let popularHomeScreen = PopularHomeScreen()
    let topRatedHomeScreen = TopRatedHomeScreen()
    let genresHomeScreen = GenresHomeScreen()
    
    // Movie Screen Data
    let movieName = MovieScreenData.movieName.rawValue
    let firstScreenLabel = MovieScreenData.firstScreenLabelText.rawValue
    let avatarMovieTitleText = MovieScreenData.avatarMovieTitle.rawValue
    
    
    
    
    
    
    // TC6: Verify Screen Header(Now Playing) is Showing properly or not
    func test6_NowPlayingScreenLabel(){
        XCTAssertTrue(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
    }
    
    //TC7: Verify Search box placeholder (Search any movies or person)is showing correctly or not.
    func test7_NowPlayingScreenSearchPlaceholder(){
        XCTAssertTrue(common.isSearchBoxPlaceholderExist(),"Search Field Placeholder Doesn't Exist")
    }
    
    // TC8: Verify Search box is working properly or not
    func test8_NowPlayingScreenSearchMovie(){
        common.searchMovie(movieName:movieName )
        XCTAssertEqual(common.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
    //TC10: Verify movies list is scrolling properly or not
    //    func test10_ScrollInMovieList(){
    //
    //        common.swipeUPDOWN()
    //        let labelOfAvatarMovie = nowPlayingHomeScreen.getLabelOfAvatarMovie()
    //        XCTAssertNotNil(labelOfAvatarMovie.range(of:avatarMovieTitleText))
    //        XCTAssert(nowPlayingHomeScreen.getAvatarMovieTitelLocator().exists)
    //    }
    
    
    //TC12: Verify Upcoming movies screen is showing properly or not while swipe left from Now Playing Movie Screen
    func test12_SwipeLeftFromNowPlayingScreen(){
        app.swipeLeft()
        XCTAssertTrue(upcomingHomeScreen.isUpcomingTextExist(),"Upcoming Screen Label Doesn't Exist")
    }
    
    // TC13: Verify Screen Header(Upcoming) is Showing properly or not
    func test13_UpcomingScreenLabel(){
        common.swipeToUpComingScreen()
        XCTAssertTrue(upcomingHomeScreen.isUpcomingTextExist(),"Upcoming Screen Label Doesn't Exist")
    }
    
    //TC14: Verify Search box placeholder (Search any movies or person)is showing correctly or not.
    func test14_UpcomingScreenSearchPlaceholder(){
        common.swipeToUpComingScreen()
        XCTAssertTrue(common.isSearchBoxPlaceholderExist(),"Search Field Placeholder Doesn't Exist")
    }
    
    // TC15: Verify Search box is working properly or not
    func test15_UpcomingScreenSearchMovie(){
        common.swipeToUpComingScreen()
        common.searchMovie(movieName:movieName )
        XCTAssertEqual(common.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
    //TC19: Verify Trending movies screen is showing properly or not while swipe left from Upcoming Movie Screen
    func test19_SwipeLeftFromUpcomingScreen(){
        common.swipeToUpComingScreen()
        app.swipeLeft()
        XCTAssertTrue(trendingHomeScreen.isTrendingTextExist(),"Trending Screen Label Doesn't Exist")
    }
    
    // TC20: Verify Screen Header(Trending) is Showing properly or not
    func test20_TrendingScreenLabel(){
        common.swipeToTrendingScreen()
        XCTAssertTrue(trendingHomeScreen.isTrendingTextExist(),"Trending Screen Label Doesn't Exist")
    }
    
    //TC21: Verify Search box placeholder (Search any movies or person)is showing correctly or not.
    func test21_TrendingScreenSearchPlaceholder(){
        common.swipeToTrendingScreen()
        XCTAssertTrue(common.isSearchBoxPlaceholderExist(),"Search Field Placeholder Doesn't Exist")
    }
    
    // TC22: Verify Search box is working properly or not
    func test22_TrendingScreenSearchMovie(){
        common.swipeToTrendingScreen()
        common.searchMovie(movieName:movieName )
        XCTAssertEqual(common.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
    //TC26: Verify Popular movies screen is showing properly or not while swipe left from Trending Movie Screen
    func test26_SwipeLeftFromTrendingScreen(){
        common.swipeToTrendingScreen()
        app.swipeLeft()
        XCTAssertTrue(popularHomeScreen.isPopularLabelTextExist(),"Popular Screen Label Doesn't Exist")
    }
    
    
    
    // TC27: Verify Screen Header(Popular) is Showing properly or not
    func test27_PopularScreenLabel(){
        common.swipeToPopularScreen()
        XCTAssertTrue(popularHomeScreen.isPopularLabelTextExist(),"Popular Screen Label Doesn't Exist")
    }
    
    //TC28: Verify Search box placeholder (Search any movies or person)is showing correctly or not.
    func test28_PopularScreenSearchPlaceholder(){
        common.swipeToPopularScreen()
        XCTAssertTrue(common.isSearchBoxPlaceholderExist(),"Search Field Placeholder Doesn't Exist")
    }
    
    // TC29: Verify Search box is working properly or not
    func test22_PopularScreenSearchMovie(){
        common.swipeToPopularScreen()
        common.searchMovie(movieName:movieName )
        XCTAssertEqual(common.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
    //TC33: Verify Top Rated movies screen is showing properly or not while swipe left from Popular Movie Screen
    func test26_SwipeLeftFromPopularScreen(){
        common.swipeToPopularScreen()
        app.swipeLeft()
        XCTAssertTrue(topRatedHomeScreen.isTopRatedScreenLabelTextExist(),"Top Rated Screen Label Doesn't Exist")
    }
    
    
    
    
    // TC34: Verify Screen Header(Top Rated) is Showing properly or not
    func test34_TopRatedScreenLabel(){
        common.swipeToTopRatedScreen()
        XCTAssertTrue(topRatedHomeScreen.isTopRatedScreenLabelTextExist(),"Top Rated Screen Label Doesn't Exist")
    }
    
    //TC35: Verify Search box placeholder (Search any movies or person)is showing correctly or not.
    func test35_TopRatedScreenSearchPlaceholder(){
        common.swipeToTopRatedScreen()
        XCTAssertTrue(common.isSearchBoxPlaceholderExist(),"Search Field Placeholder Doesn't Exist")
    }
    
    // TC36: Verify Search box is working properly or not
    func test36_TopRatedScreenSearchMovie(){
        common.swipeToTopRatedScreen()
        common.searchMovie(movieName:movieName )
        XCTAssertEqual(common.getSearchFieldValue(),movieName,"Text field value is not correct")
    }
    
    // TC40: Verify Genres screen is showing properly or not while swipe left from Top Rated Movie Screen
    func test40_SwipeLeftFromTopRatedScreen(){
        common.swipeToTopRatedScreen()
        app.swipeLeft()
        XCTAssertTrue(genresHomeScreen.isGenresTextExist(),"Genres Screen Label Doesn't Exist")
    }
}
