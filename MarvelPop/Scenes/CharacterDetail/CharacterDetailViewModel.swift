//
//  CharacterDetailViewModel.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 26/6/22.
//

import Foundation

struct CharacterInfoData {
    var title: String
    var description: String?
}

enum CharacterSections {
    case info(CharacterInfoData)
    case comics(ItemList)
//    case stories(ItemList)
//    case events(ItemList)
//    case series(ItemList)
}

class CharacterDetailViewModel {
    let marvelCharacter: MarvelCharacter
    weak var output: CharacterDetailViewOutput?
    
    var state: CharacterDetailViewState = .loading {
        didSet {
            output?.update(state)
        }
    }
    
    init(marvelCharacter: MarvelCharacter) {
        self.marvelCharacter = marvelCharacter
    }
    
    func buildData() {
        var sections: [CharacterSections] = []
        
        if let name = marvelCharacter.name {
            sections.append(.info(CharacterInfoData(title: name, description: marvelCharacter.description)))
        }
        
        if let comics = marvelCharacter.comics {
            sections.append(.comics(comics))
        }
        
        state = .data(sections)
    }
}

extension CharacterDetailViewModel: CharacterDetailViewInput {
    func willAppear() {
        buildData()
    }
}
