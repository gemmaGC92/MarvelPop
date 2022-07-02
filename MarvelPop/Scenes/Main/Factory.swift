//
//  Factory.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 18/6/22.
//

import Foundation
import UIKit

class Factory {
    
    func home(router: HomeViewRouter) -> UIViewController {
        let vc = HomeViewController()
        let model = HomeViewModel()
        model.router = router
        vc.model = model
        return vc
    }
    
    func characters(_ client: MarvelAPIClient, router: CharactersRouter) -> UIViewController {
        let provider = CharactersDataProvider(client: client)
        let model = CharactersViewModel(provider)
        let vc = CharactersViewController()
        vc.model = model
        model.output = vc
        model.router = router
        return vc
    }
    
    func characterDetails(_ item: MarvelCharacter) -> UIViewController {
        let vc = CharacterDetailViewController()
        let model = CharacterDetailViewModel(marvelCharacter: item)
        vc.model = model
        model.output = vc
        return vc
    }
}
