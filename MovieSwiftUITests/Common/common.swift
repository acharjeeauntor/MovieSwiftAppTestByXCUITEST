//
//  common.swift
//  MovieSwiftUITests
//
//  Created by Auntor Acharja on 22/12/22.
//  Copyright © 2022 Thomas Ricouard. All rights reserved.
//

import XCTest
class Common:BaseTest{
    
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
}
