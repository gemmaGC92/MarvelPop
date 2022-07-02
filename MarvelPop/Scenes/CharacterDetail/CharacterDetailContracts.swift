//
//  CharacterDetailContracts.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 26/6/22.
//

import Foundation
import UIKit

protocol CharacterDetailViewInput: AnyObject {
    func willAppear()
}

protocol CharacterDetailViewOutput: AnyObject {
    func update(_ state: CharacterDetailViewState)
    func showImage(_ img: UIImage)
}

enum CharacterDetailViewState {
    case loading
    case data([CharacterSections])
}
