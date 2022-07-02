//
//  HomeViewModelTest.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 16/6/22.
//

import XCTest
@testable import MarvelPop

private class FakeRouter: HomeViewRouter {
    var didTap = false
    
    func onLetsGoTapped() {
        didTap = true
    }
}

class HomeViewModelTest: XCTestCase {
    var sut: HomeViewModel!
    fileprivate var router = FakeRouter()
    
    override func setUp() {
        sut = HomeViewModel()
        sut.router = router
    }
    
    func test_Given_userIsOnHomeScreen_And_userTapsButton_Then_routerIsNotified() {
        XCTAssertFalse(router.didTap)
        sut.onTap()
        XCTAssertTrue(router.didTap)
    }
}
