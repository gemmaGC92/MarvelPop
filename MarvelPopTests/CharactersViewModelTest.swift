//
//  CharactersViewModelTest.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 2/7/22.
//

import XCTest
@testable import MarvelPop

private class FakeOutput: CharactersViewOutput {
    var didUpdate = false
    var state: CharactersViewState?
    
    func update(_ state: CharactersViewState) {
        didUpdate = true
        self.state = state
    }
}

private class FakeRouter: CharactersRouter {
    var didShowDetails = false
    var item: MarvelCharacter?
    
    func showDetails(_ item: MarvelCharacter) {
        didShowDetails = true
        self.item = item
    }
}

class CharactersViewModelTest: XCTestCase {
    var sut: CharactersViewModel!
    fileprivate let router = FakeRouter()
    fileprivate let output = FakeOutput()
    
    override func setUp() {
        let mockClient = MockAPIClient(mockData: ["v1/public/characters": [MockResponse(data: CharacterDataWrapperDTO.mockList.asData)]])
        let provider = CharactersDataProvider(client: mockClient)
        sut = CharactersViewModel(provider)
        sut.router = router
        sut.output = output
    }
    
    func test_Given_userEntersOnScreen_Then_loadingStateIsSet() {
        XCTAssertNil(output.state)
        XCTAssertEqual(sut.marvelCharacters.count, 0)
        sut.willAppear()
        XCTAssertEqual(output.state, .data(sut.marvelCharacters))
        XCTAssertEqual(sut.marvelCharacters.count, 20)
        guard let paging = sut.paging else {
            XCTFail()
            return
        }
        XCTAssertTrue(paging.hasMoreData)
    }
    
    func test_Given_userSelectsACharacter_Then_routerIsNotified() {
        sut.willAppear()
        XCTAssertFalse(router.didShowDetails)
        sut.didSelect(IndexPath(row: 2, section: 0))
        XCTAssertTrue(router.didShowDetails)
        XCTAssertEqual(router.item?.id, sut.marvelCharacters[2].id)
    }
}
