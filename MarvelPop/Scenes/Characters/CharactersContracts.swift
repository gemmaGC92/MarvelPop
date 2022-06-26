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
}

protocol CharactersViewOutput: AnyObject {
    func update(_ state: CharactersViewState)
}

protocol CharactersRouter: AnyObject {
    func showDetails(_ item: MarvelCharacter)
}

enum CharactersViewState {
    case loading
    case data([MarvelCharacter])
}
