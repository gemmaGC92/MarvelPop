//
//  CharactersViewModel.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

class CharactersViewModel {
    let provider: CharactersDataProvider
    weak var output: CharactersViewOutput?
    var marvelCharacters: [MarvelCharacter] = []
    
    private var state: CharactersViewState = .loading {
        didSet {
            output?.update(state)
        }
    }
    
    init(_ provider: CharactersDataProvider) {
        self.provider = provider
    }
    
    func handleCharactersData(_ dto: CharacterDataWrapperDTO) {
        guard let results = dto.data?.results else { return }
        marvelCharacters = results.map { MarvelCharacter($0) }
        state = .data(marvelCharacters)
    }
}

extension CharactersViewModel: CharactersViewInput {
    func willAppear() {
        state = .loading
        provider.getCharacters { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .failure(let error):
                print(error)
            case .success(let data):
                self.handleCharactersData(data)
            }
        }
    }
}
