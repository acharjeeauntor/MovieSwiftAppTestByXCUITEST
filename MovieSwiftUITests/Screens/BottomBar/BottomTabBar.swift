//
//  BottomTabBar.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 24/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest

class BottomTabBar:BaseTest{
        public var tabBarLabel = "Tab Bar"
        public var moviesTabLabel = "Movies"
        public var discoverTabLabel = "Discover"
        public var fanClubTabLabel = "Fan Club"
        public var myListsTabLabel = "My Lists"
    
    
    func clickMoviesTab(){
        app.tabBars[tabBarLabel].buttons[moviesTabLabel].tap()
    }

    func clickDiscoverTab(){
        app.tabBars[tabBarLabel].buttons[discoverTabLabel].tap()
    }
    
    func clickFanClubTab(){
        app.tabBars[tabBarLabel].buttons[fanClubTabLabel].tap()
    }
    
    func clickMyListsTab(){
        app.tabBars[tabBarLabel].buttons[myListsTabLabel].tap()
    }

    
}
