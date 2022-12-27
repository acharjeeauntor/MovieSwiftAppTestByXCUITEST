//
//  BottomTabTest.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 24/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class BottomTabTest:BaseTest{
    
    // Screen Objects
    let bottomTabBar = BottomTabBar()
    let nowPlayingHomeScreen = NowPlayingHomeScreen()
    let discoverHomeScreen = DiscoverHomeScreen()
    let fanClubHomeScreen = FanClubHomeScreen()
    let myListsHomeScreen = MyListsHomeScreen()
    let common = Common()
    let genresHomeScreen = GenresHomeScreen()
    
    
    
    //TC1: Verify Movies tab is working properly or not
    func test1_TabMovies(){
        bottomTabBar.clickMoviesTab()
        XCTAssert(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
    }
    
    //TC2: Verify Discover tab is working properly or not
    func test2_TabDiscover(){
        bottomTabBar.clickDiscoverTab()
       XCTAssertTrue(discoverHomeScreen.isRandomButtonExist(),"Random Button Doesn't Exist")
    }
    
    //TC3: Verify Fan Club tab is working properly or not
    func test3_TabFanClub(){
        bottomTabBar.clickFanClubTab()
        XCTAssertTrue(fanClubHomeScreen.isFanClubTextExist(),"Fan Club Screen Label Doesn't Exist")
    }
    
    //TC4: Verify My Lists tab is working properly or not
    func test4_TabMyLists(){
        bottomTabBar.clickMyListsTab()
        XCTAssertTrue(myListsHomeScreen.isMyListsTextExist(),"My Lists Screen Label Doesn't Exist")
    }
    
    //TC5: Verify Swipe left-right is working properly for movie module
    func test5_SwipeScreens(){
        common.swipeLeftFiveTime()
        XCTAssertTrue(genresHomeScreen.isGenresTextExist())
        common.swipeRightFiveTime()
        XCTAssert(nowPlayingHomeScreen.isNowPlayingTextExist(),"Now Playing Screen Label Doesn't Exist")
        
    }
}
