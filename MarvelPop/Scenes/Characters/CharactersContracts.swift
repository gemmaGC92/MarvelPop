//
//  CharactersContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

protocol CharactersViewInput: AnyObject {
    func willAppear()
    func didSelect(_ indexPath: IndexPath)
    func loadMoreData()
}

protocol CharactersViewOutput: AnyObject {
    func update(_ state: CharactersViewState)
}

protocol CharactersRouter: AnyObject {
    func showDetails(_ item: MarvelCharacter)
}

enum CharactersViewState: Equatable {
    static func == (lhs: CharactersViewState, rhs: CharactersViewState) -> Bool {
        switch (lhs, rhs) {
        case (.loading, .loading), (.data, .data): return true
        default: return false
        }
    }
    
    case loading
    case data([MarvelCharacter])
}
