//
//  CharactersContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

protocol CharactersViewInput {
    func willAppear()
}

protocol CharactersViewOutput {
    func update(_ state: CharactersViewState)
}

enum CharactersViewState {
    case loading
    case data([MarvelCharacter])
}
