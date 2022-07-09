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

struct CharacterPublications {
    var name: String
    var type: PublicationType
    var items: ItemList
}

enum CharacterSections {
    case info(CharacterInfoData)
    case data([CharacterPublications])
    case events(ItemList)
}

class CharacterDetailViewModel {
    let marvelCharacter: MarvelCharacter
    weak var output: CharacterDetailViewOutput?
    weak var router: CharacterDetailRouter?
    
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
        
        var publications: [CharacterPublications] = []
        
        if let comics = marvelCharacter.comics {
            publications.append(CharacterPublications(name: "Comics", type: .comics, items: comics))
        }
        
        if let series = marvelCharacter.series {
            publications.append(CharacterPublications(name: "Series", type: .series, items: series))
        }
        
        if let stories = marvelCharacter.stories {
            publications.append(CharacterPublications(name: "Stories", type: .stories, items: stories))
        }
        
        sections.append(.data(publications))
        
        if let events = marvelCharacter.events {
            sections.append(.events(events))
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
    func showPublication(type: PublicationType) {
        guard let id = marvelCharacter.id else { return }
        router?.showPublication(for: id, type: type)
    }
    
    func willAppear() {
        buildData()
    }
}
