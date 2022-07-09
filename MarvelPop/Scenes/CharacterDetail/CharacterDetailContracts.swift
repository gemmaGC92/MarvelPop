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
    func showPublication(type: PublicationType)
}

protocol CharacterDetailViewOutput: AnyObject {
    func update(_ state: CharacterDetailViewState)
    func showImage(_ img: UIImage)
}

protocol CharacterDetailRouter: AnyObject {
    func showPublication(for id: Int, type: PublicationType)
}

enum CharacterDetailViewState: Equatable {
    static func == (lhs: CharacterDetailViewState, rhs: CharacterDetailViewState) -> Bool {
        switch (lhs, rhs) {
        case (.loading, .loading), (.data, .data): return true
        default: return false
        }
    }
    
    case loading
    case data([CharacterSections])
}
