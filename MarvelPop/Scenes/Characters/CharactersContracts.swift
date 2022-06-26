//
//  CharactersContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation

protocol CharactersViewInput: AnyObject {
    func willAppear()
}

protocol CharactersViewOutput: AnyObject {
    func update(_ state: CharactersViewState)
}

enum CharactersViewState {
    case loading
    case data([MarvelCharacter])
}
