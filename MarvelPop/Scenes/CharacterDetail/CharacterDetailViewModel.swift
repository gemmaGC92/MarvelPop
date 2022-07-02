//
//  CharacterDetailViewModel.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 26/6/22.
//

import Foundation
import UIKit

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
        fetchImage()
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
    
    func fetchImage() {
        guard let url = marvelCharacter.thumbnailURL else { return }
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url)
            DispatchQueue.main.async {
                guard let data = data, let image = UIImage(data: data) else { return }
                self.output?.showImage(image)
            }
        }
    }
}

extension CharacterDetailViewModel: CharacterDetailViewInput {
    func willAppear() {
        buildData()
    }
}
