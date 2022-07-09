//
//  PublicationsListViewModelTest.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 9/7/22.
//

import XCTest
@testable import MarvelPop

private class FakeOutput: PublicationsListViewOutput {
    var didUpdate = false
    var state: PublicationsListViewState?
    var title: String?
    
    func update(_ state: PublicationsListViewState) {
        didUpdate = true
        self.state = state
    }
    
    func showTitle(_ title: String) {
        self.title = title
    }
}

class PublicationsListViewModelTest: XCTestCase {
    var sut: PublicationsListViewModel!
    fileprivate let output = FakeOutput()
    
    override func setUp() {
        let mockClient = MockAPIClient(mockData: ["v1/public/characters/1111/comics": [MockResponse(data: PublicationDataWrapperDTO.mockList.asData)]])
        let provider = PublicationsListDataProvider(client: mockClient)
        sut = PublicationsListViewModel(id: 1111, type: .comics, provider: provider)
        sut.output = output
    }
    
    func test_Given_userEntersOnScreen_Then_loadingStateIsSet() {
        XCTAssertNil(output.state)
        XCTAssertEqual(sut.publications.count, 0)
        sut.willAppear()
        XCTAssertEqual(output.state, .data(sut.publications))
        
        guard let paging = sut.paging else {
            XCTFail()
            return
        }
        XCTAssertFalse(paging.hasMoreData)
    }
    
    func test_Given_userOpensComicsList_Then_correctTitleIsSet() {
        sut.willAppear()
        XCTAssertEqual(output.title, PublicationType.comics.title)
    }
}
