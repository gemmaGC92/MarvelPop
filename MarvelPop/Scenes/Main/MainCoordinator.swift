//
//  MainCoordinator.swift
//  MarvelPop
//
//  Created by Guiteras Cebrian, Gemma on 17/6/22.
//

import Foundation
import UIKit

class MainCoordinator {
    let window: UIWindow?
    let client: MarvelAPIClient
    let factory: Factory
    var navigator: UINavigationController?
    
    init(rootWindow: UIWindow?, client: MarvelAPIClient, factory: Factory) {
        self.client = client
        self.factory = factory
        self.window = rootWindow
    }
    
    public func start() -> UIViewController {
        self.navigator = UINavigationController(rootViewController: factory.home(router: self))
        guard let nav = navigator else {
            return UIViewController()
        }
        return nav
    }
    
    func openCharactersList() {
        let vc = factory.characters(client, router: self)
        navigator?.pushViewController(vc, animated: true)
    }
    
    func openCharacterDetails(_ item: MarvelCharacter) {
        let vc = factory.characterDetails(item, router: self)
        navigator?.pushViewController(vc, animated: true)
    }
    
    func openPublication(id: Int, type: PublicationType) {
        let vc = factory.publication(id, type: type, client: client)
        navigator?.pushViewController(vc, animated: true)
    }
}

// MARK: - HomeViewRouter protocol implementation
extension MainCoordinator: HomeViewRouter {
    func onLetsGoTapped() {
        openCharactersList()
    }
}

// MARK: - CharactersRouter protocol implementation
extension MainCoordinator: CharactersRouter {
    func showDetails(_ item: MarvelCharacter) {
        openCharacterDetails(item)
    }
}

// MARK: - CharacterDetailRouter protocol implementation
extension MainCoordinator: CharacterDetailRouter {
    func showPublication(for id: Int, type: PublicationType) {
        openPublication(id: id, type: type)
    }
}
