//
//  CharacterDetailViewModelTest.swift
//  MarvelPopTests
//
//  Created by Guiteras Cebrian, Gemma on 2/7/22.
//

import XCTest
@testable import MarvelPop

private class FakeOutput: CharacterDetailViewOutput {
    var didShowImage = false
    var didUpdate = false
    var state: CharacterDetailViewState?
    
    func update(_ state: CharacterDetailViewState) {
        didUpdate = true
        self.state = state
    }
    
    func showImage(_ img: UIImage) {
        didShowImage = true
    }
}

class CharacterDetailViewModelTest: XCTestCase {
    var sut: CharacterDetailViewModel!
    fileprivate var output = FakeOutput()
    
    override func setUp() {
        guard let mock = CharacterDTO.mock else {
            XCTFail()
            return
        }
        let char = MarvelCharacter(mock)
        sut = CharacterDetailViewModel(marvelCharacter: char)
        sut.output = output
    }
    
    func test_Given_viewIsLoaded_Then_dataIsDisplayed() {
        XCTAssertNil(output.state)
        XCTAssertFalse(output.didShowImage)
        sut.willAppear()
        XCTAssertEqual(output.state, .data([]))
        switch output.state {
        case .data(let sections):
            XCTAssertEqual(sections.count, 3)
        default:
            XCTFail()
        }
    }
}
