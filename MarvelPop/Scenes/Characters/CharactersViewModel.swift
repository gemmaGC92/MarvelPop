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
    weak var router: CharactersRouter?
    
    var marvelCharacters: [MarvelCharacter] = []
    var filteredCharacters: [MarvelCharacter] = []
    var paging: Paging?
    private var isFetchingData = false
    
    private var state: CharactersViewState = .loading {
        didSet {
            output?.update(state)
        }
    }
    
    init(_ provider: CharactersDataProvider) {
        self.provider = provider
    }
    
    func handleCharactersData(_ dto: CharacterDataWrapperDTO) {
        guard let data = dto.data, let results = data.results else { return }
        paging = Paging(count: data.count ?? 0, offset: data.offset ?? 0, total: data.total ?? 0)
        marvelCharacters.append(contentsOf: results.map { MarvelCharacter($0) })
        state = .data(marvelCharacters)
    }
    
    func handleFilteredData(_ dto: CharacterDataWrapperDTO) {
        guard let data = dto.data, let results = data.results else { return }
        paging = Paging(count: data.count ?? 0, offset: data.offset ?? 0, total: data.total ?? 0)
        filteredCharacters = results.map { MarvelCharacter($0) }
        state = .data(filteredCharacters)
    }
    
    func fetchCharacters(offset: Int? = nil) {
        guard !isFetchingData else { return }
        isFetchingData = true
        provider.getCharacters(offset: offset) { [weak self] result in
            guard let self = self else { return }
            self.isFetchingData = false
            switch result {
            case .failure(let error):
                print(error)
            case .success(let data):
                self.handleCharactersData(data)
            }
        }
    }
    
    func filterCharacters(filter: String, offset: Int? = nil) {
        guard !isFetchingData else { return }
        isFetchingData = true
        provider.filterCharacters(filter, offset: offset) { [weak self] result in
            guard let self = self else { return }
            self.isFetchingData = false
            switch result {
            case .failure(let error):
                print(error)
            case .success(let data):
                self.handleFilteredData(data)
            }
        }
    }
}

extension CharactersViewModel: CharactersViewInput {
    func exitSearchMode() {
        state = .data(marvelCharacters)
    }
    
    func search(_ filter: String) {
        state = .loading
        filterCharacters(filter: filter)
    }
    
    func loadMoreData() {
        guard let paging = paging else { return }
        if paging.hasMoreData == true {
            fetchCharacters(offset: paging.offset + 20)
        }
    }
    
    func didSelect(_ indexPath: IndexPath) {
        guard indexPath.row < marvelCharacters.count else { return }
        router?.showDetails(marvelCharacters[indexPath.row])
    }
    
    func willAppear() {
        state = .loading
        fetchCharacters()
    }
}
